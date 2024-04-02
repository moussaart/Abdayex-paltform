import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:ipe_application/Constants/colors.dart";
import "package:ipe_application/Widgets/Text%20widgets.dart";
import "package:ipe_application/function/Home/Home_function.dart";
import "package:ipe_application/generated/l10n.dart";
import "package:simple_icons/simple_icons.dart";

class footerDesktop extends StatelessWidget {
  const footerDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(0, 10), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Theme.of(context).colorScheme.primary,
              scand_color,
              third_color,
              Theme.of(context).colorScheme.secondary,
            ],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
          )),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          contactInformationDesktop(fontsize: 12),
          usefulLinksDesktop(
            fontsize: 12,
          ),
          developedByDesktop(fontsize: 12),
          PagesDesktop(fontsize: 12)
        ],
      ),
    );
  }
}

class contactInformationDesktop extends StatelessWidget {
  double fontsize;
  contactInformationDesktop({super.key, required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PrimaryLine(
            label: S.of(context).contactInformation,
            textaligne: TextAlignement(context),
            fontsize: fontsize + 5,
            textColor: Theme.of(context).colorScheme.background,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 200,
              height: 5, // Adjust the height of the divider as needed
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.map_rounded,
                size: fontsize,
                color: Theme.of(context).colorScheme.background,
              ),
              const SizedBox(
                width: 4,
              ),
              PrimaryLine(
                label: S.of(context).address,
                textaligne: TextAlignement(context),
                fontsize: fontsize,
                textColor: Theme.of(context).colorScheme.background,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.phone_android_outlined,
                size: fontsize,
                color: Theme.of(context).colorScheme.background,
              ),
              const SizedBox(
                width: 4,
              ),
              PrimaryLine(
                label: S.of(context).phone,
                textaligne: TextAlign.left,
                fontsize: fontsize,
                textColor: Theme.of(context).colorScheme.background,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.mail_outline,
                size: fontsize,
                color: Theme.of(context).colorScheme.background,
              ),
              const SizedBox(
                width: 4,
              ),
              PrimaryLine(
                label: S.of(context).email,
                textaligne: TextAlignement(context),
                fontsize: fontsize,
                textColor: Theme.of(context).colorScheme.background,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class usefulLinksDesktop extends StatelessWidget {
  double fontsize;
  usefulLinksDesktop({super.key, required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PrimaryLine(
            label: S.of(context).usefulLinks,
            textaligne: TextAlignement(context),
            fontsize: fontsize + 5,
            textColor: Theme.of(context).colorScheme.background,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 200,
              height: 5, // Adjust the height of the divider as needed
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          PrimaryLine(
            label: S.of(context).humanitiesInstitute,
            textaligne: TextAlignement(context),
            fontsize: fontsize,
            textColor: Theme.of(context).colorScheme.background,
          ),
          PrimaryLine(
            label: S.of(context).higherEducationMinistry,
            textaligne: TextAlign.left,
            fontsize: fontsize,
            textColor: Theme.of(context).colorScheme.background,
          ),
          PrimaryLine(
            label: S.of(context).educationMinistry,
            textaligne: TextAlignement(context),
            fontsize: fontsize,
            textColor: Theme.of(context).colorScheme.background,
          ),
        ],
      ),
    );
  }
}

class developedByDesktop extends StatelessWidget {
  double fontsize;
  developedByDesktop({super.key, required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PrimaryLine(
            label: S.of(context).developedBy,
            textaligne: TextAlignement(context),
            fontsize: fontsize + 5,
            textColor: Theme.of(context).colorScheme.background,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 200,
              height: 5, // Adjust the height of the divider as needed
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          PrimaryLine(
            label: S.of(context).engineeringStudents,
            textaligne: TextAlignement(context),
            fontsize: fontsize,
            textColor: Theme.of(context).colorScheme.background,
          ),
        ],
      ),
    );
  }
}

class PagesDesktop extends StatelessWidget {
  double fontsize;
  PagesDesktop({super.key, required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PrimaryLine(
            label: S.of(context).pages,
            textaligne: TextAlignement(context),
            fontsize: fontsize + 5,
            textColor: Theme.of(context).colorScheme.background,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 150,
              height: 5, // Adjust the height of the divider as needed
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          SizedBox(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.facebook_outlined,
                  color: Theme.of(context).colorScheme.background,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  SimpleIcons.instagram,
                  color: Theme.of(context).colorScheme.background,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  SimpleIcons.github,
                  color: Theme.of(context).colorScheme.background,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  SimpleIcons.linkedin,
                  color: Theme.of(context).colorScheme.background,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
