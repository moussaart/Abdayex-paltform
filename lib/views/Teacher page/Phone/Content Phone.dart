import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:ipe_application/Provider/state_varaibles.dart";
import "package:ipe_application/Widgets/Navigationbar/navigation_bare.dart";
import "package:ipe_application/Widgets/Teacher%20page/Login%20box.dart";
import "package:ipe_application/Widgets/Teacher%20page/Sign%20up.dart";
import "package:ipe_application/views/Home/Phone/foot%20page%20phone.dart";
import "package:provider/provider.dart";

class ContentPhoneTeatcher extends StatelessWidget {
  const ContentPhoneTeatcher({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(
          height: 110,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: (Provider.of<NavigationState>(context).loginTaggle)
              ? const LoginBox()
              : const SignupBox(),
        ),
        const SizedBox(
          height: 20,
        ),
        const footerPhone()
      ],
    );
  }
}
