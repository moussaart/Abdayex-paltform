import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

TextAlign TextAlignement(BuildContext context) {
  return Localizations.localeOf(context) == Locale("ar")
      ? TextAlign.right
      : TextAlign.left;
}

GradientDirection Gradient_Direction(BuildContext context) {
  return Localizations.localeOf(context) == Locale("ar")
      ? GradientDirection.rtl
      : GradientDirection.ltr;
}
