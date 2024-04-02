import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:ipe_application/Constants/Variables.dart";
import "package:ipe_application/Widgets/Text%20widgets.dart";
import "package:ipe_application/Widgets/Gredient%20divider.dart";
import "package:ipe_application/views/Home/Desktop/foot%20page%20desktop.dart";
import "package:ipe_application/function/Home/Home_function.dart";
import "package:ipe_application/generated/l10n.dart";

class ContentDesktop extends StatelessWidget {
  const ContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 60,
          ),
          Label(
            label: S.of(context).Pr_title,
            fontsize: 100,
          ),
          GradientDivider(),
          const PrestationWidegts(),
          Label(
            label: S.of(context).Solution_title,
            fontsize: 60,
          ),
          const OurSolution(),
          const SizedBox(
            height: 10,
          ),
          Label(
            label: S.of(context).Services_title,
            fontsize: 60,
          ),
          GradientDivider(),
          const OurServices(),
          footerDesktop()
        ],
      ),
    );
  }
}

class PrestationWidegts extends StatelessWidget {
  const PrestationWidegts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: PrimaryLine(
                label: S.of(context).Pr_line_1,
                textaligne: TextAlign.center,
                textColor: Theme.of(context).colorScheme.onPrimary),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: PrimaryLine(
                label: S.of(context).Pr_line_2,
                textaligne: TextAlign.center,
                textColor: Theme.of(context).colorScheme.onPrimary),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: PrimaryLine(
                label: S.of(context).Pr_line_3,
                textaligne: TextAlign.center,
                textColor: Theme.of(context).colorScheme.onPrimary),
          ),
        ],
      ),
    );
  }
}

class OurSolution extends StatelessWidget {
  const OurSolution({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  PrimaryLine(
                    label: S.of(context).Solution_Prestation,
                    textaligne: TextAlignement(context),
                    textColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                  ItemText(label: "1. ${S.of(context).Solution_item_1} :"),
                  ScondaryLine(
                      label: S.of(context).Solution_line_1,
                      textaligne: TextAlignement(context)),
                  ItemText(label: "2. ${S.of(context).Solution_item_2} :"),
                  ScondaryLine(
                      label: S.of(context).Solution_line_2,
                      textaligne: TextAlignement(context)),
                  ItemText(label: "3. ${S.of(context).Solution_item_3} :"),
                  ScondaryLine(
                      label: S.of(context).Solution_line_3,
                      textaligne: TextAlignement(context)),
                  ItemText(label: "4. ${S.of(context).Solution_item_4} :"),
                  ScondaryLine(
                      label: S.of(context).Solution_line_4,
                      textaligne: TextAlignement(context)),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        width: 600,
                        height: 600,
                        child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(45),
                              child: Image.asset(Image_1,
                                  fit: BoxFit.fill), // Image radius
                            )))))
          ],
        ),
      ),
    );
  }
}

class OurServices extends StatelessWidget {
  const OurServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: SizedBox(
                        width: 500,
                        height: 500,
                        child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                                size: Size.fromRadius(45), // Image radius
                                child: Image.asset(Image_2,
                                    fit: BoxFit.cover)))))),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  PrimaryLine(
                      label: S.of(context).Services_Prestation,
                      textaligne: TextAlignement(context),
                      textColor: Theme.of(context).colorScheme.onPrimary),
                  ItemText(label: "1. ${S.of(context).Services_item_1} :"),
                  ScondaryLine(
                      label: S.of(context).Services_line_1,
                      textaligne: TextAlignement(context)),
                  ItemText(label: "2. ${S.of(context).Services_item_2} :"),
                  ScondaryLine(
                      label: S.of(context).Services_line_2,
                      textaligne: TextAlignement(context)),
                  ItemText(label: "3. ${S.of(context).Services_item_3} :"),
                  ScondaryLine(
                      label: S.of(context).Services_line_3,
                      textaligne: TextAlignement(context)),
                  ItemText(label: "4. ${S.of(context).Services_item_4} :"),
                  ScondaryLine(
                      label: S.of(context).Services_line_4,
                      textaligne: TextAlignement(context)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
