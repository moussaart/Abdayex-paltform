import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ipe_application/Controller/FireStore%20services/Firestore_services_class.dart';
import 'package:ipe_application/Provider/state_varaibles.dart';
import 'package:ipe_application/class/Message%20Class.dart';
import 'package:ipe_application/generated/l10n.dart';

import 'package:ipe_application/views/Teacher_Space.dart';
import 'package:provider/provider.dart';

class FirebaseAuthServices {
  // ignore: non_constant_identifier_names
  final FirebaseAuth _FirebaseAuth = FirebaseAuth.instance;

  Future<User?> SignUpWithEmailAndPassword(
      BuildContext context, String email, String password) async {
    try {
      UserCredential credential =
          await _FirebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password);
      GetMessageClass.GetMessageinformationBlock(
          context, "Plese Email Verfication");
      await _FirebaseAuth.currentUser?.sendEmailVerification();
      bool isEmailverfied = await CheckVerfication();
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      if (isEmailverfied == true) {
        GetMessageClass.GetMessageErrorBlock(
            context, "Email not verfied try again");
        _FirebaseAuth.currentUser!.delete();
        return null;
      } else {
        GetMessageClass.GetMessageVerficationBlock(context, "Email Verfied");
        return credential.user;
      }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      if (e.code == "email-already-in-use") {
        GetMessageClass.GetMessageErrorBlock(
            context, S.of(context).errorMessageSignUp);
      }
    }
  }

  Future<bool> CheckVerfication() async {
    bool isEmailverfied = true;
    int i = 0;
    while (isEmailverfied && i <= 20) {
      await _FirebaseAuth.currentUser!.reload();
      isEmailverfied = await _FirebaseAuth.currentUser!.emailVerified;
      await Future.delayed(Duration(seconds: 2));
      isEmailverfied = !(isEmailverfied);
      i++;
    }
    return isEmailverfied;
  }

  Future<User?> LoginWithEmailAndPassword(
      BuildContext context, String email, String password) async {
    try {
      UserCredential credential =
          await _FirebaseAuth.signInWithEmailAndPassword(
              email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      if (e.code == "invalid-credential") {
        GetMessageClass.GetMessageErrorBlock(
            context, S.of(context).errorMessageSignIn);
      }
    }
  }
}

void SignIn(
    BuildContext context,
    FirebaseAuthServices _auth,
    GlobalKey<FormState> fromfield,
    TextEditingController nameController,
    TextEditingController emailController,
    TextEditingController passController) async {
  final FireStoreServices _fireStoreDB = FireStoreServices();
  if (fromfield.currentState!.validate()) {
    String username = nameController.text;
    String email = emailController.text;
    String password = passController.text;
    User? user =
        await _auth.SignUpWithEmailAndPassword(context, email, password);
    if (user != null) {
      await _fireStoreDB.SaveUser(username, user);
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => TeacherSpace(user: user)));
      Provider.of<NavigationState>(context, listen: false).changLogin(true);
    }
  }
}

void LogIn(
    BuildContext context,
    FirebaseAuthServices _auth,
    GlobalKey<FormState> fromfield,
    TextEditingController emailController,
    TextEditingController passController) async {
  if (fromfield.currentState!.validate()) {
    String email = emailController.text;
    String password = passController.text;
    GetMessageClass.GetMessageWaitBlock(context, S.of(context).pleaseWait);
    User? user =
        await _auth.LoginWithEmailAndPassword(context, email, password);
    if (user != null) {
      emailController.clear();
      passController.clear();
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => TeacherSpace(user: user)));
      Provider.of<NavigationState>(context, listen: false).changLogin(true);
    }
  }
}
