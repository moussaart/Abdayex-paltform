import "package:flutter/material.dart";
import "package:ipe_application/Constants/Variables.dart";
import "package:ipe_application/Constants/colors.dart";
import "package:ipe_application/Widgets/Text%20widgets.dart";
import "package:ipe_application/Widgets/Navigationbar/widget/NavigationItem.dart";
import "package:ipe_application/Widgets/Navigationbar/widget/Pop_menu_locale.dart";
import "package:ipe_application/function/Home/Home_function.dart";
import "package:ipe_application/generated/l10n.dart";

class AppDrawerNavigation extends StatelessWidget {
  const AppDrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).colorScheme.onPrimary, blurRadius: 15)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AppDrawerHeader(),
          DrawerItem(
            label: S.of(context).home,
            item_state: 0,
          ),
          DrawerItem(
            label: S.of(context).teacher_space,
            item_state: 1,
          ),
          DrawerItem(
            label: S.of(context).student_space,
            item_state: 2,
          ),
          const Spacer(),
          const PopMenuLcalePhone(),
        ],
      ),
    );
  }
}

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              scand_color,
              third_color,
              Theme.of(context).colorScheme.secondary,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(logo_png),
        ));
  }
}

class DrawerItem extends StatelessWidget {
  String label;
  int item_state;
  DrawerItem({super.key, required this.label, required this.item_state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: NavigationItem_tablet(label, item_state),
    );
  }
}
