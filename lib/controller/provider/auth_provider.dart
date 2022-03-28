import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wusla_food/data/firebase/auth_helper.dart';
import 'package:wusla_food/data/firebase/firestore_helper.dart';
import 'package:wusla_food/modle/userfirebase.dart';

class AuthProvider extends ChangeNotifier {
  AuthProvider() {
    // getAllAsset();
    // // getUserFromFirebase();
    // runFilter(' ');
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
      // getAllAsset();
      // RouterClass.routerClass.pushWidgetReplacement(HomeScreen());
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
        // getAllAsset();
        await getUserFromFirebase();
      }
      if (loggedUser != null) {
        // RouterClass.routerClass.pushWidgetReplacement(HomeScreen());
        clear();
      } else {
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
  //
  // logOut() async {
  //   loggedUser = null;
  //   await AuthHelper.authHelper.logout();
  //   RouterClass.routerClass.pushWidgetReplacement(LoginScreen());
  // }

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

  // Asset1? assetselect;
  // /////////search
  // search(String assetCode) {
  //   for (int i = 0; i < allAssetList.length; i++) {
  //     if (allAssetList[i].assetCode!.contains(assetCode)) {
  //       assetselect = allAssetList[i];
  //       return;
  //     } else {
  //       assetselect = null;
  //     }
  //   }
  //   //
  //   // assetselect = allAssetList
  //   //     .where((element) => element.assetCode!.contains(assetCode));
  //   notifyListeners();
  // }
  //
  // List<Asset1> results = [];
  // void runFilter(String enteredKeyword) {
  //   if (enteredKeyword.isEmpty) {
  //     // if the search field is empty or only contains white-space, we'll display all users
  //     results = allAssetList;
  //   } else {
  //     results = allAssetList
  //         .where((asset) => asset.assetName!
  //             .toLowerCase()
  //             .contains(enteredKeyword.toLowerCase()))
  //         .toList();
  //     // we use the toLowerCase() method to make it case-insensitive
  //   }
  //
  //   // Refresh the UI
  //   notifyListeners();
  // }
  //
  // chekcInterNetConnect() async {
  //   try {
  //     final result = await InternetAddress.lookup('example.com')
  //         .timeout(Duration(seconds: 3));
  //     if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
  //       isConnectInterNet = false;
  //     }
  //   } on SocketException catch (_) {
  //     isConnectInterNet = true;
  //   }
  // }
}
