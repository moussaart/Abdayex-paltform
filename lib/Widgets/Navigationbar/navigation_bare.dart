import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ipe_application/Constants/Variables.dart';
import 'package:ipe_application/Widgets/Text%20widgets.dart';
import 'package:ipe_application/Widgets/Navigationbar/widget/Main%20row.dart';
import 'package:ipe_application/Widgets/Navigationbar/widget/Pop_menu_locale.dart';
import 'package:ipe_application/generated/l10n.dart';
import 'package:responsive_builder/responsive_builder.dart';

List<bool> navigationState = [true, false, false];

class NAvigationBare extends StatelessWidget {
  const NAvigationBare({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: const NavigationBarDesktop(),
      tablet: const NavigationBarTablet(),
      mobile: NavigationBarPhone(),
    );
  }
}

class NavigationBarDesktop extends StatelessWidget {
  const NavigationBarDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 15,
            offset: const Offset(0, 10), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 45,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: SizedBox(
                  child: SvgPicture.asset(logo_svg),
                ),
              ),
              const Expanded(flex: 15, child: MainRowDesktop()),
              const Expanded(flex: 1, child: PopMenuLcale())
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationBarTablet extends StatelessWidget {
  const NavigationBarTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 20,
            offset: const Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 50,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: SvgPicture.asset(logo_svg),
                ),
              ),
              const Expanded(flex: 15, child: MainRowTablet()),
              const Expanded(flex: 1, child: PopMenuLcaleTablet())
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationBarPhone extends StatelessWidget {
  void _openDrawer() {
    homekey.currentState?.openDrawer();
  }

  NavigationBarPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 20,
            offset: const Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 50,
          child: Row(
            children: <Widget>[
              SizedBox(
                child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 30,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  onPressed: () {
                    // Handle the research button press
                    // You can add your research functionality here
                    _openDrawer();
                  },
                ),
              ),
              Spacer(),
              Label(label: S.of(context).appName, fontsize: 35)
            ],
          ),
        ),
      ),
    );
  }
}
