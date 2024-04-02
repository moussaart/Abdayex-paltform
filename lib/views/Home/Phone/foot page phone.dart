import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:ipe_application/Constants/colors.dart";
import "package:ipe_application/Widgets/Text%20widgets.dart";
import "package:ipe_application/function/Home/Home_function.dart";
import "package:ipe_application/generated/l10n.dart";
import "package:simple_icons/simple_icons.dart";

class footerPhone extends StatelessWidget {
  const footerPhone({super.key});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          contactInformationPhone(fontsize: 15),
          usefulLinksPhone(
            fontsize: 15,
          ),
          developedByPhone(fontsize: 15),
          PagesPhone(fontsize: 15)
        ],
      ),
    );
  }
}

class contactInformationPhone extends StatelessWidget {
  double fontsize;
  contactInformationPhone({super.key, required this.fontsize});

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
              width: 120,
              height: 1, // Adjust the height of the divider as needed
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
                fontweight: FontWeight.normal,
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
                fontweight: FontWeight.normal,
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
                fontweight: FontWeight.normal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class usefulLinksPhone extends StatelessWidget {
  double fontsize;
  usefulLinksPhone({super.key, required this.fontsize});

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
              width: 120,
              height: 1, // Adjust the height of the divider as needed
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
            fontweight: FontWeight.normal,
          ),
          PrimaryLine(
            label: S.of(context).higherEducationMinistry,
            textaligne: TextAlign.left,
            fontsize: fontsize,
            textColor: Theme.of(context).colorScheme.background,
            fontweight: FontWeight.normal,
          ),
          PrimaryLine(
            label: S.of(context).educationMinistry,
            textaligne: TextAlignement(context),
            fontsize: fontsize,
            textColor: Theme.of(context).colorScheme.background,
            fontweight: FontWeight.normal,
          ),
        ],
      ),
    );
  }
}

class developedByPhone extends StatelessWidget {
  double fontsize;
  developedByPhone({super.key, required this.fontsize});

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
              width: 120,
              height: 1, // Adjust the height of the divider as needed
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
            fontweight: FontWeight.normal,
          ),
        ],
      ),
    );
  }
}

class PagesPhone extends StatelessWidget {
  double fontsize;
  PagesPhone({super.key, required this.fontsize});

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
              width: 120,
              height: 1, // Adjust the height of the divider as needed
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
