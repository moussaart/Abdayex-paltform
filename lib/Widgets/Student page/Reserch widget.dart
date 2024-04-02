import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import 'dart:html' as html;
import "package:flutter/widgets.dart";
import "package:gradient_borders/box_borders/gradient_box_border.dart";
import "package:ipe_application/Constants/Variables.dart";
import "package:ipe_application/Constants/colors.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:ipe_application/Widgets/Gradient%20Text%20Field.dart";
import "package:ipe_application/Widgets/Gradient%20button.dart";
import "package:ipe_application/Widgets/Gredient%20Containre.dart";

import "package:ipe_application/Widgets/Text%20widgets.dart";
import "package:ipe_application/generated/l10n.dart";
import "package:responsive_builder/responsive_builder.dart";

class ReserchBox extends StatelessWidget {
  const ReserchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, divicetype) {
      double width;
      if (divicetype.isDesktop) {
        width = 0.65;
      } else {
        width = 0.85;
      }
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
        child: GredientContainer(
          reduis: 25,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Label(label: "${S.of(context).Class} :", fontsize: 25),
                const SizedBox(
                  height: 10,
                ),
                DropdownMenu(
                    label: Label(label: S.of(context).Class, fontsize: 20),
                    onSelected: (labe) {},
                    width: MediaQuery.of(context).size.width * width,
                    dropdownMenuEntries: Grades(context)),
                const SizedBox(
                  height: 20,
                ),
                Label(
                    label: "${S.of(context).EducationalLevel} :", fontsize: 25),
                const SizedBox(
                  height: 10,
                ),
                DropdownMenu(
                    label: Label(
                        label: S.of(context).EducationalLevel, fontsize: 20),
                    onSelected: (labe) {},
                    width: MediaQuery.of(context).size.width * width,
                    dropdownMenuEntries: EducationalLevel(context)),
                const SizedBox(
                  height: 20,
                ),
                Label(label: "${S.of(context).content} :", fontsize: 25),
                const SizedBox(
                  height: 10,
                ),
                GradientTextField(
                  text: S.of(context).content,
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: divicetype.isDesktop
                      ? AlignmentDirectional.topEnd
                      : AlignmentDirectional.topCenter,
                  child: InkWell(
                    onTap: () {
                      print("===========================");
                    },
                    child: InkWell(
                      onTap: () {
                        print("ok");
                      },
                      child: GradientButton(
                        text: S.of(context).Searchthedatabase,
                        reduis: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
