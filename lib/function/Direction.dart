import "package:flutter/material.dart";
import "package:gradient_borders/box_borders/gradient_box_border.dart";
import "package:ipe_application/Constants/colors.dart";
import "package:ipe_application/function/Home/Home_function.dart";

Alignment begin(BuildContext context) {
  return Localizations.localeOf(context) == Locale("ar")
      ? Alignment.topRight
      : Alignment.topLeft;
}

Alignment end(BuildContext context) {
  return Localizations.localeOf(context) == Locale("ar")
      ? Alignment.topLeft
      : Alignment.topRight;
}
