import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireStoreServices {
  final _FireStoreDB = FirebaseFirestore.instance;

  Future<void> SaveUser(String name, User user) async {
    final userData = <String, String>{"name": name, "email": user.email ?? ""};

    _FireStoreDB.collection("Users")
        .add(userData)
        .catchError((error, stackTrace) {
      print(error);
    });
  }
}
