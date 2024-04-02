import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ipe_application/Constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ipe_application/function/Direction.dart';

class GradientButton extends StatelessWidget {
  String text;
  double reduis;
  GradientButton({
    super.key,
    required this.text,
    this.reduis = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Theme.of(context).colorScheme.primary,
            scand_color,
            third_color,
            Theme.of(context).colorScheme.secondary
          ], begin: begin(context), end: end(context)),
          borderRadius: BorderRadius.circular(reduis),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
          child: Text(
            text,
            style: GoogleFonts.reemKufi(
                textStyle: TextStyle(
              fontSize: 30,
              color: Theme.of(context).colorScheme.background,
              fontWeight: FontWeight.bold,
            )),
          ),
        ),
      ),
    );
  }
}
