import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:ipe_application/Constants/Variables.dart";
import "package:ipe_application/Controller/user_auth_implementation/firebase_auth_services.dart";
import "package:ipe_application/views/Home_view.dart";

class TeacherSpace extends StatelessWidget {
  User user;
  TeacherSpace({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: teacherspacekey,
      appBar: AppBar(
        title: Text(
          user.email ?? "okkkkk",
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: InkWell(
          onTap: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const HomeView()));
          },
          child: Container(
            color: Theme.of(context).colorScheme.secondary,
            child: const Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("out"),
            ),
          ),
        ),
      ),
    );
  }
}
