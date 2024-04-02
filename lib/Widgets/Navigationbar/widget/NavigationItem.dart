import 'package:flutter/material.dart';
import 'package:ipe_application/Constants/Variables.dart';
import 'package:ipe_application/Provider/state_varaibles.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationItem_desktop extends StatelessWidget {
  final String title;
  final int text_state;

  const NavigationItem_desktop(this.title, this.text_state);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizinginformation) => GestureDetector(
        onTap: () {
          if (sizinginformation.deviceScreenType == DeviceScreenType.mobile) {
            homekey.currentState?.closeDrawer();
          }
          Provider.of<NavigationState>(context, listen: false)
              .changeView(text_state);
          Provider.of<NavigationState>(context, listen: false)
              .changeList(text_state);
        },
        child: ((Provider.of<NavigationState>(context)
                    .navigationState)[text_state] ==
                true)
            ? GradientText(
                title,
                style: GoogleFonts.reemKufi(
                    textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary
                ],
                gradientDirection: GradientDirection.rtl,
              )
            : Text(
                title,
                style: GoogleFonts.reemKufi(
                    textStyle: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.onPrimary,
                )),
              ),
      ),
    );
  }
}

class NavigationItem_tablet extends StatelessWidget {
  final String title;
  final int text_state;

  const NavigationItem_tablet(this.title, this.text_state);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizinginformation) => GestureDetector(
        onTap: () {
          if (sizinginformation.deviceScreenType == DeviceScreenType.mobile) {
            homekey.currentState?.closeDrawer();
          }
          Provider.of<NavigationState>(context, listen: false)
              .changeView(text_state);
          Provider.of<NavigationState>(context, listen: false)
              .changeList(text_state);
        },
        child: ((Provider.of<NavigationState>(context)
                    .navigationState)[text_state] ==
                true)
            ? GradientText(
                title,
                style: GoogleFonts.reemKufi(
                    textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary
                ],
                gradientDirection: GradientDirection.rtl,
              )
            : Text(
                title,
                style: GoogleFonts.reemKufi(
                    textStyle: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.onPrimary,
                )),
              ),
      ),
    );
  }
}
