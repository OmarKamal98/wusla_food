import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wusla_food/modle/message.dart';
import 'package:wusla_food/modle/userfirebase.dart';

class FirestoreHelper {
  FirestoreHelper._();
  static FirestoreHelper firestoreHelper = FirestoreHelper._();
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  createUser(UserApp user) async {
    await firebaseFirestore.collection('users').doc(user.id).set(user.toMap());
  }

  Future<UserApp> getUserFromFs(String userid) async {
    DocumentSnapshot<Map<String, dynamic>> document =
        await firebaseFirestore.collection('users').doc(userid).get();
    Map<String, dynamic>? userData = document.data();
    userData?['id'] = document.id;
    UserApp gdUser = UserApp.fromMap(userData!);
    return gdUser;
  }

  deleteCollectio() async {
    await firebaseFirestore.collection('users').doc().delete();
  }

  // //////////chat

  final String chatsCollectionName = 'Chats';
  final String messagesCollectionName = 'Messages';
  getUsersFromFirestore() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
    await firebaseFirestore.collection('users').get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> query =
        querySnapshot.docs;
    return query;
  }
  sendMessage(Message message) async {
    message.sentTime = FieldValue.serverTimestamp();
    await firebaseFirestore
        .collection(chatsCollectionName)
        .doc(message.chatId)
        .collection(messagesCollectionName)
        .add(message.toMap());
  }

  Future<bool> checkCollectionExists(String chatiD) async {
    DocumentSnapshot<Map<String, dynamic>> doc = await firebaseFirestore
        .collection(chatsCollectionName)
        .doc(chatiD)
        .get();
    if (doc.exists) {
      return true;
    } else {
      return false;
    }
  }

  createChat(String chatId, UserApp myUser, UserApp otherUser) async {
    await firebaseFirestore.collection(chatsCollectionName).doc(chatId).set({
      'membersIds': [myUser.id, otherUser.id],
      'membersNames': [myUser.name, otherUser.name]
    });
  }

  Future<List<QueryDocumentSnapshot<Map<String, dynamic>>>> getChats() async {
    String? myId = FirebaseAuth.instance.currentUser?.uid;
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await firebaseFirestore
        .collection(chatsCollectionName)
        .where('membersIds', arrayContains: myId)
        .get();
    List<QueryDocumentSnapshot<Map<String, dynamic>>> docs = querySnapshot.docs;
    return docs;
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getChatMessages(String chatId) {
    return firebaseFirestore
        .collection(chatsCollectionName)
        .doc(chatId)
        .collection(messagesCollectionName)
        .orderBy('sentTime')
        .snapshots();
  }
  //
  // addNewAsset(Asset1 asset1) async {
  //   // DocumentReference<Map<String, dynamic>> doc =
  //   await firebaseFirestore.collection('asset').add(asset1.toMap());
  // }
  //
  // Future<List<Asset1>> getAllAsset() async {
  //   QuerySnapshot<Map<String, dynamic>> allAssetSnapshot =
  //       await firebaseFirestore.collection('asset').get();
  //
  //   List<Asset1> allAsset = allAssetSnapshot.docs.map((e) {
  //     Map<String, dynamic> documentMap = e.data();
  //     documentMap['id'] = e.id;
  //     // log('firestore helper e.id: ${e.id}');
  //     // log("firestore helper documentMap['id']: ${documentMap['id']}");
  //     Asset1 asset1 = Asset1.fromMap(documentMap);
  //     return asset1;
  //   }).toList();
  //   return allAsset;
  // }
}
