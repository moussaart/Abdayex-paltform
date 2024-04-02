import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:ipe_application/Provider/state_varaibles.dart";
import "package:ipe_application/Widgets/Gradient%20button.dart";
import "package:ipe_application/Widgets/Gredient%20Containre.dart";
import "package:ipe_application/Widgets/Gredient%20divider.dart";
import "package:ipe_application/Widgets/Text%20widgets.dart";
import "package:ipe_application/function/Home/Home_function.dart";
import "package:ipe_application/Controller/user_auth_implementation/firebase_auth_services.dart";
import "package:ipe_application/function/Validation%20functions.dart";
import "package:ipe_application/generated/l10n.dart";
import "package:provider/provider.dart";

class SignupBox extends StatelessWidget {
  const SignupBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final _fromfield = GlobalKey<FormState>();
    final FirebaseAuthServices _auth = FirebaseAuthServices();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final TextEditingController confpassController = TextEditingController();

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
              //================================SIGN UP=======================================================
              Label(label: S.of(context).signUp, fontsize: 25),
              const SizedBox(
                height: 10,
              ),
              //================================CREATE AACOUNT==================================================
              PrimaryLine(
                  label: S.of(context).createAccount,
                  textaligne: TextAlignement(context),
                  textColor: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(0.7)),
              const SizedBox(
                height: 10,
              ),
              //=====================================USERNAME==================================================
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: nameController,
                decoration: InputDecoration(
                  labelText: S.of(context).username,
                  errorStyle: const TextStyle(color: Colors.red),
                  suffixIcon: const Icon(Icons.person),
                  suffixIconColor: Theme.of(context).colorScheme.primary,
                  border: const OutlineInputBorder(),
                  focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.red)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3,
                          color: Theme.of(context).colorScheme.primary)),
                ),
                validator: (name) =>
                    name!.length < 2 ? S.of(context).nameLengthError : null,
                autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.red)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3,
                          color: Theme.of(context).colorScheme.primary)),
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
                  errorStyle: const TextStyle(color: Colors.red),
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
                validator: (val) => validatePassword(val, context),
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              const SizedBox(
                height: 10,
              ),
              //=====================================CONFIRMPASSWORD==================================================
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: confpassController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: S.of(context).confirmPassword,
                  errorStyle: const TextStyle(color: Colors.red),
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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) =>
                    validateConfirmPassword(passController.text, val, context),
              ),
              //==================================BUTTON SIGN UP=====================================================
              InkWell(
                onTap: () async {
                  SignIn(context, _auth, _fromfield, nameController,
                      emailController, passController);
                },
                child: GradientButton(
                  text: S.of(context).signUp,
                  reduis: 15,
                ),
              ),

              //=================================================================================================
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InformationItem(
                      label: S.of(context).alreadyHaveAccount,
                      color: Theme.of(context).colorScheme.onBackground,
                      fontsize: 17,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Provider.of<NavigationState>(context, listen: false)
                            .changLogin(true);
                      },
                      child: InformationItem(
                        label: S.of(context).login,
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
