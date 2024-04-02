import "package:flutter/material.dart";
import "package:ipe_application/Provider/state_varaibles.dart";
import "package:ipe_application/Widgets/Teacher%20page/Login%20box.dart";
import "package:ipe_application/Widgets/Teacher%20page/Sign%20up.dart";
import "package:ipe_application/views/Home/Tablet/foot%20page%20tablet.dart";
import "package:provider/provider.dart";

class ContentTabletTeatcher extends StatelessWidget {
  const ContentTabletTeatcher({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwith = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 3,
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenwith * 0.2),
                child: (Provider.of<NavigationState>(context).loginTaggle)
                    ? const LoginBox()
                    : const SignupBox(),
              ),
            ],
          ),
        ),
        const footerTablet()
      ],
    );
  }
}
