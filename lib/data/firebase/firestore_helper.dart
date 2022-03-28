import 'package:cloud_firestore/cloud_firestore.dart';
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
