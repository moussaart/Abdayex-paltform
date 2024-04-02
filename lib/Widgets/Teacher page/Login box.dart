import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:ipe_application/Provider/state_varaibles.dart";
import "package:ipe_application/Widgets/Gradient%20button.dart";
import "package:ipe_application/Widgets/Gredient%20Containre.dart";
import "package:ipe_application/Widgets/Gredient%20divider.dart";
import "package:ipe_application/Widgets/Text%20widgets.dart";
import "package:ipe_application/Controller/user_auth_implementation/firebase_auth_services.dart";
import "package:ipe_application/function/Validation%20functions.dart";
import "package:ipe_application/generated/l10n.dart";
import "package:provider/provider.dart";

class LoginBox extends StatelessWidget {
  const LoginBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _fromfield = GlobalKey<FormState>();
    final FirebaseAuth _firebasauth = FirebaseAuth.instance;
    final FirebaseAuthServices _auth = FirebaseAuthServices();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();

    return Form(
      key: _fromfield,
      child: GredientContainer(
          paddinghorizonta: 20,
          paddingvertical: 20,
          width: 4,
          reduis: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //================================LOGIN=======================================================
              Label(label: S.of(context).login, fontsize: 25),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),

              //===================================EMAIL====================================================
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: S.of(context).Email,
                  errorStyle: const TextStyle(color: Colors.red),
                  suffixIcon: const Icon(Icons.email_outlined),
                  suffixIconColor: Theme.of(context).colorScheme.primary,
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3,
                          color: Theme.of(context).colorScheme.primary)),
                  focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.red)),
                ),
                validator: (val) => validateEmail(val, context),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              //=======================================================================================
              const SizedBox(
                height: 10,
              ),
              //=====================================PASSWORD==================================================
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: S.of(context).password,
                  suffixIcon: const Icon(Icons.password),
                  suffixIconColor: Theme.of(context).colorScheme.primary,
                  border: const OutlineInputBorder(),
                  focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.red)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3,
                          color: Theme.of(context).colorScheme.primary)),
                ),
                validator: (val) => validatePasswordLogin(val, context),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              //==================================BUTTON LOGIN=====================================================
              InkWell(
                onTap: () {
                  LogIn(context, _auth, _fromfield, emailController,
                      passController);
                },
                child: GradientButton(
                  text: S.of(context).login,
                  reduis: 15,
                ),
              ),
              SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InformationItem(
                      label: S.of(context).DHA,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontsize: 17,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Provider.of<NavigationState>(context, listen: false)
                            .changLogin(false);
                      },
                      child: InformationItem(
                        label: S.of(context).signUp,
                        color: Theme.of(context).colorScheme.primary,
                        fontsize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
