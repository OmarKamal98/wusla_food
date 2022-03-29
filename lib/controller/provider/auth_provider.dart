import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wusla_food/controller/navigator/router_class.dart';
import 'package:wusla_food/data/firebase/auth_helper.dart';
import 'package:wusla_food/data/firebase/firestore_helper.dart';
import 'package:wusla_food/modle/chat.dart';
import 'package:wusla_food/modle/message.dart';
import 'package:wusla_food/modle/userfirebase.dart';
import 'package:wusla_food/view/screen/navigate_screen/naviagateion_main.dart';
import 'package:wusla_food/view/screen/sign_screens/login_screen.dart';

class AuthProvider extends ChangeNotifier {
  AuthProvider() {
    getUsers();
  }
  //controller sign
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  //controller add assets
  TextEditingController assetIdController = TextEditingController();
  TextEditingController assetNameController = TextEditingController();
  TextEditingController assetCodeController = TextEditingController();
  TextEditingController assetDetailsController = TextEditingController();
  TextEditingController assetDetailsArabicController = TextEditingController();
  TextEditingController assetTypeIdController = TextEditingController();
  /////filter
  TextEditingController filterController = TextEditingController();

  UserApp? loggedUser;
  ////////////////////
  bool visiblePass = false;
  bool checkRegister = false;
  changeVisibilityPassword() {
    visiblePass = !visiblePass;
    notifyListeners();
  }

  changeVisibilityCheckBox() {
    checkRegister = !checkRegister;
    notifyListeners();
  }

  register(BuildContext context) async {
    UserApp userApp = UserApp(
        name: userNameController.text,
        email: emailController.text,
        password: passwordController.text,
        phoneNumber: phoneController.text);

    try {
      UserCredential? x = await AuthHelper.authHelper
          .createNewAccount(userApp.email!.trim(), userApp.password!.trim());
      userApp.id = x?.user!.uid;
      await FirestoreHelper.firestoreHelper.createUser(userApp);

      loggedUser = userApp;

      RouterClass.routerClass.pushWidgetReplacement(NavigationMain());
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Register Success'),
          backgroundColor: Colors.green,
          behavior: SnackBarBehavior.floating,
        ),
      );
      clear();
      log('تم التسجيل بنجاح ');
    } on Exception catch (e) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.toString().split(']').last),
        backgroundColor: Colors.red,
      ));
    }
  }

  login(BuildContext context) async {
    try {
      await AuthHelper.authHelper.signIn(loginEmailController.text.trim(),
          loginPasswordController.text.trim());
      if (AuthHelper.authHelper.success) {
        await getUserFromFirebase();
        getUsers();
      }
      if (loggedUser != null) {
        RouterClass.routerClass.pushWidgetReplacement(NavigationMain());
        clear();
        notifyListeners();
      } else {
        notifyListeners();
        return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('خطأ في البريد أو كلمة المرور'),
          backgroundColor: Colors.red,
        ));
      }
    } on Exception catch (e) {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.toString().split(']').last),
        backgroundColor: Colors.red,
      ));
    }
  }
  //
  // addAsset(BuildContext context) async {
  //   Asset1 asset = Asset1(
  //       assetId: int.parse(assetIdController.text),
  //       assetName: assetNameController.text,
  //       assetCode: assetCodeController.text,
  //       assetDetails: assetDetailsController.text,
  //       assetDetailsArabic: assetDetailsArabicController.text,
  //       assetTypeId: int.parse(assetTypeIdController.text));
  //   await FirestoreHelper.firestoreHelper.addNewAsset(asset);
  //   clear();
  //   getAllAsset();
  //   notifyListeners();
  //   return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //     content: Text('تمت الإضافة بنجاح'),
  //     backgroundColor: Colors.blue,
  //   ));
  // }

  deleteCollection() async {
    await FirestoreHelper.firestoreHelper.deleteCollectio();
  }
  //
  // getAllAsset() async {
  //   allAssetList = await FirestoreHelper.firestoreHelper.getAllAsset();
  //   notifyListeners();
  // }

  getUserFromFirebase() async {
    String userId = FirebaseAuth.instance.currentUser!.uid;
    loggedUser = await FirestoreHelper.firestoreHelper.getUserFromFs(userId);
    notifyListeners();
  }

  logOut() async {
    loggedUser = null;
    await AuthHelper.authHelper.logout();
    RouterClass.routerClass.pushWidgetReplacement(LoginScreen());
  }

  forgetPassword(String email) async {
    AuthHelper.authHelper.forgetPassword(email);
  }

  clear() {
    loginEmailController.clear();
    loginPasswordController.clear();
    userNameController.clear();
    passwordController.clear();
    emailController.clear();
    assetIdController.clear();
    assetTypeIdController.clear();
    assetNameController.clear();
    assetDetailsController.clear();
    assetDetailsArabicController.clear();
    assetCodeController.clear();
    phoneController.clear();
    notifyListeners();
  }
////////// chat

  List<Chat>? allMyChats;
  List<UserApp>? users;
  getUsers() async {
    List<QueryDocumentSnapshot<Map<String, dynamic>>> queries =
        await FirestoreHelper.firestoreHelper.getUsersFromFirestore();
    List<UserApp>? userList =
        queries.map((e) => UserApp.fromMap(e.data())).toList();
    String myId = FirebaseAuth.instance.currentUser!.uid;

    userList.where((element) => element.id == myId).first;
    userList.removeWhere((element) => element.id == myId);
    users = userList;
    getChats();
    notifyListeners();
  }

  getChats() async {
    List<QueryDocumentSnapshot<Map<String, dynamic>>> list =
        await FirestoreHelper.firestoreHelper.getChats();
    List<Chat> chats = list.map((e) {
      String chatId = e.id;
      Map<String, dynamic> map = e.data();
      map['chatId'] = chatId;
      return Chat.fromJson(map);
    }).toList();
    allMyChats = chats;
    notifyListeners();
  }

  sendMessage(Message message, [UserApp? otherUser]) async {
    String? chatId = message.chatId;
    bool x =
        await FirestoreHelper.firestoreHelper.checkCollectionExists(chatId!);
    if (otherUser == null) {
      FirestoreHelper.firestoreHelper.sendMessage(message);
    } else {
      if (!x) {
        await createChat(chatId, otherUser);
        FirestoreHelper.firestoreHelper.sendMessage(message);
      } else {
        FirestoreHelper.firestoreHelper.sendMessage(message);
      }
    }
  }

  createChat(String chatId, UserApp otherUser) async {
    FirestoreHelper.firestoreHelper.createChat(chatId, loggedUser!, otherUser);
  }
}
