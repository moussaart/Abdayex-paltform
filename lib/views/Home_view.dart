import 'package:flutter/material.dart';
import 'package:ipe_application/Constants/Variables.dart';
import 'package:ipe_application/Provider/Theme_provider.dart';
import 'package:ipe_application/Provider/state_varaibles.dart';
import 'package:ipe_application/views/Home/Phone/App%20drawer.dart';
import 'package:ipe_application/views/Home/Phone/Content%20Phone.dart';
import 'package:ipe_application/views/Home/Tablet/Content%20Tablet.dart';
import 'package:ipe_application/views/Home/Desktop/Content%20desktop.dart';
import 'package:ipe_application/Widgets/Navigationbar/navigation_bare.dart';
import 'package:ipe_application/views/Student%20page/Desktop/Content%20desktop.dart';
import 'package:ipe_application/views/Student%20page/Phone/Content%20Phone.dart';
import 'package:ipe_application/views/Student%20page/Tablet/Content%20Tablet.dart';
import 'package:ipe_application/views/Teacher%20page/Desktop/Content%20desktop.dart';
import 'package:ipe_application/views/Teacher%20page/Phone/Content%20Phone.dart';
import 'package:ipe_application/views/Teacher%20page/Tablet/Content%20Tablet.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizinginformation) => Scaffold(
        key: homekey,
        backgroundColor: Theme.of(context).colorScheme.background,
        drawer: sizinginformation.deviceScreenType == DeviceScreenType.mobile
            ? const AppDrawerNavigation()
            : null,
        body: ScreenTypeLayout(
          mobile: const HomePhone(),
          desktop: const HomeDesktop(),
          tablet: const HomeTablet(),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              Provider.of<ThemeProvider>(context, listen: false).toggleIcon();
            },
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: Provider.of<ThemeProvider>(context).icon),
      ),
    );
  }
}

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Builder(builder: (context) {
          const List<Widget> Content = [
            ContentDesktop(),
            ContentDesktopTeacher(),
            ContentDesktopStudent(),
          ];
          return Content[Provider.of<NavigationState>(context).view];
        }),
        const NAvigationBare()
      ],
    );
  }
}

class HomePhone extends StatelessWidget {
  const HomePhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Builder(builder: (context) {
          const List<Widget> Content = [
            ContentPhone(),
            ContentPhoneTeatcher(),
            ContentPhoneStudent(),
          ];
          return Content[Provider.of<NavigationState>(context).view];
        }),
        const NAvigationBare()
      ],
    );
  }
}

class HomeTablet extends StatelessWidget {
  const HomeTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Builder(builder: (context) {
          const List<Widget> Content = [
            ContentTablet(),
            ContentTabletTeatcher(),
            ContentTabletStudent()
          ];
          return Content[Provider.of<NavigationState>(context).view];
        }),
        const NAvigationBare()
      ],
    );
  }
}
