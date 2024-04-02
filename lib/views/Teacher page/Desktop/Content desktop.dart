import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:ipe_application/Provider/state_varaibles.dart";
import "package:ipe_application/Widgets/Teacher%20page/Login%20box.dart";
import "package:ipe_application/Widgets/Teacher%20page/Sign%20up.dart";

import "package:ipe_application/views/Home/Desktop/foot%20page%20desktop.dart";
import "package:provider/provider.dart";

class ContentDesktopTeacher extends StatelessWidget {
  const ContentDesktopTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 4,
          child: ListView(
            children: <Widget>[
              Row(
                children: [
                  const Expanded(flex: 1, child: SizedBox()),
                  Expanded(
                    flex: 1,
                    child: (Provider.of<NavigationState>(context).loginTaggle)
                        ? const LoginBox()
                        : const SignupBox(),
                  ),
                  const Expanded(flex: 1, child: SizedBox()),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        footerDesktop()
      ],
    );
  }
}
