import "package:flutter/material.dart";
import "package:gradient_borders/box_borders/gradient_box_border.dart";
import "package:ipe_application/Constants/colors.dart";
import "package:ipe_application/function/Home/Home_function.dart";
import "package:ipe_application/function/Direction.dart";

class GredientContainer extends StatelessWidget {
  Widget child;
  double width;
  double reduis;
  double paddinghorizonta;
  double paddingvertical;
  GredientContainer(
      {super.key,
      required this.child,
      this.width = 4,
      this.reduis = 45,
      this.paddinghorizonta = 16,
      this.paddingvertical = 16});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: paddinghorizonta, vertical: paddingvertical),
        decoration: BoxDecoration(
            border: GradientBoxBorder(
              gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.primary,
                scand_color,
                third_color,
                Theme.of(context).colorScheme.secondary
              ], begin: begin(context), end: end(context)),
              width: width,
            ),
            borderRadius: BorderRadius.circular(reduis)),
        child: child);
  }
}
