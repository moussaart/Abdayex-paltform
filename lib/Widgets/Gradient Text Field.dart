import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:ipe_application/Widgets/Gredient%20Containre.dart";

import "package:ipe_application/generated/l10n.dart";

class GradientTextField extends StatelessWidget {
  double reduis;
  String text;
  GradientTextField({super.key, required this.text, this.reduis = 8});

  @override
  Widget build(BuildContext context) {
    return GredientContainer(
      width: 2,
      paddinghorizonta: 8,
      paddingvertical: 2,
      reduis: reduis,
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
              color:
                  Theme.of(context).colorScheme.onBackground.withOpacity(0.5)),
          border: InputBorder.none,
        ),
        style: GoogleFonts.reemKufi(
            textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        )),
      ),
    );
  }
}
