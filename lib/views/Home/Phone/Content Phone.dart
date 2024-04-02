import "package:flutter/material.dart";
import "package:ipe_application/Constants/Variables.dart";
import "package:ipe_application/Widgets/Text%20widgets.dart";
import "package:ipe_application/Widgets/Gredient%20divider.dart";
import "package:ipe_application/views/Home/Phone/foot%20page%20phone.dart";
import "package:ipe_application/views/Home/Tablet/foot%20page%20tablet.dart";
import "package:ipe_application/function/Home/Home_function.dart";
import "package:ipe_application/generated/l10n.dart";

class ContentPhone extends StatelessWidget {
  const ContentPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 70,
          ),
          Label(
            label: S.of(context).Pr_title,
            fontsize: 35,
          ),
          GradientDivider(),
          const PrestationWidegtsPhone(),
          Label(
            label: S.of(context).Solution_title,
            fontsize: 45,
          ),
          const OurSolutionPhone(),
          const SizedBox(
            height: 8,
          ),
          Label(
            label: S.of(context).Services_title,
            fontsize: 45,
          ),
          GradientDivider(),
          const OurServicesPhone(),
          const footerPhone()
        ],
      ),
    );
  }
}

class PrestationWidegtsPhone extends StatelessWidget {
  const PrestationWidegtsPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: Column(
        children: [
          PrimaryLine(
              label: S.of(context).Pr_line_1,
              textaligne: TextAlign.center,
              fontsize: 15,
              textColor: Theme.of(context).colorScheme.onPrimary),
          PrimaryLine(
              label: S.of(context).Pr_line_2,
              textaligne: TextAlign.center,
              fontsize: 15,
              textColor: Theme.of(context).colorScheme.onPrimary),
          PrimaryLine(
              label: S.of(context).Pr_line_3,
              textaligne: TextAlign.center,
              fontsize: 15,
              textColor: Theme.of(context).colorScheme.onPrimary),
        ],
      ),
    );
  }
}

class OurSolutionPhone extends StatelessWidget {
  const OurSolutionPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                PrimaryLine(
                    label: "${S.of(context).Solution_Prestation} :",
                    textaligne: TextAlignement(context),
                    fontsize: 15,
                    textColor: Theme.of(context).colorScheme.onPrimary),
                ItemText(
                  label: "1. ${S.of(context).Solution_item_1} :",
                  fontsize: 15,
                ),
                ScondaryLine(
                  label: S.of(context).Solution_line_1,
                  textaligne: TextAlignement(context),
                  fontsize: 15,
                ),
                ItemText(
                  label: "2. ${S.of(context).Solution_item_2} :",
                  fontsize: 15,
                ),
                ScondaryLine(
                  label: S.of(context).Solution_line_2,
                  textaligne: TextAlignement(context),
                  fontsize: 15,
                ),
                ItemText(
                  label: "3. ${S.of(context).Solution_item_3} :",
                  fontsize: 15,
                ),
                ScondaryLine(
                  label: S.of(context).Solution_line_3,
                  textaligne: TextAlignement(context),
                  fontsize: 15,
                ),
                ItemText(
                  label: "4. ${S.of(context).Solution_item_4} :",
                  fontsize: 15,
                ),
                ScondaryLine(
                  label: S.of(context).Solution_line_4,
                  textaligne: TextAlignement(context),
                  fontsize: 15,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(45), // Image radius
                    child: Image.network(Image_1_phone, fit: BoxFit.fill),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OurServicesPhone extends StatelessWidget {
  const OurServicesPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                PrimaryLine(
                    label: S.of(context).Services_Prestation,
                    textaligne: TextAlignement(context),
                    fontsize: 15,
                    textColor: Theme.of(context).colorScheme.onPrimary),
                ItemText(
                  label: "1. ${S.of(context).Services_item_1} :",
                  fontsize: 15,
                ),
                ScondaryLine(
                  label: S.of(context).Services_line_1,
                  textaligne: TextAlignement(context),
                  fontsize: 15,
                ),
                ItemText(
                  label: "2. ${S.of(context).Services_item_2} :",
                  fontsize: 15,
                ),
                ScondaryLine(
                  label: S.of(context).Services_line_2,
                  textaligne: TextAlignement(context),
                  fontsize: 15,
                ),
                ItemText(
                  label: "3. ${S.of(context).Services_item_3} :",
                  fontsize: 15,
                ),
                ScondaryLine(
                  label: S.of(context).Services_line_3,
                  textaligne: TextAlignement(context),
                  fontsize: 15,
                ),
                ItemText(
                  label: "4. ${S.of(context).Services_item_4} :",
                  fontsize: 15,
                ),
                ScondaryLine(
                  label: S.of(context).Services_line_4,
                  textaligne: TextAlignement(context),
                  fontsize: 15,
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox.fromSize(
                            size: Size.fromRadius(45), // Image radius
                            child:
                                Image.network(Image_2, fit: BoxFit.cover))))),
          ],
        ),
      ),
    );
  }
}
