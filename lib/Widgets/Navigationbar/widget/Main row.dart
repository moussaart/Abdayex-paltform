import 'package:flutter/material.dart';
import 'package:ipe_application/Widgets/Navigationbar/widget/NavigationItem.dart';
import 'package:ipe_application/generated/l10n.dart';

class MainRowDesktop extends StatelessWidget {
  const MainRowDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        border: Border.all(
          color: Theme.of(context).colorScheme.onPrimary,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              NavigationItem_desktop(S.of(context).home, 0),
              const SizedBox(width: 15),
              NavigationItem_desktop(S.of(context).teacher_space, 1),
              const SizedBox(width: 15),
              NavigationItem_desktop(S.of(context).student_space, 2),
              const Spacer(),
              // Research Button
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 25,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                onPressed: () {
                  // Handle the research button press
                  // You can add your research functionality here
                  print('Research Button Pressed');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainRowTablet extends StatelessWidget {
  const MainRowTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        border: Border.all(
          color: Theme.of(context).colorScheme.onPrimary,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Spacer(),
              NavigationItem_tablet(S.of(context).home, 0),
              const SizedBox(width: 15),
              NavigationItem_tablet(S.of(context).teacher_space, 1),
              const SizedBox(width: 15),
              NavigationItem_tablet(S.of(context).student_space, 2),
              const Spacer(),
              IconButton(
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                onPressed: () {
                  // Handle the research button press
                  // You can add your research functionality here
                  print('Research Button Pressed');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
