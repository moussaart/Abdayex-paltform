import 'package:flutter/material.dart';
import 'package:ipe_application/function/Home/Home_function.dart';
import 'package:readmore/readmore.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class Label extends StatelessWidget {
  String label;
  double fontsize;
  Label({super.key, required this.label, required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return GradientText(
      label,
      textAlign: TextAlign.center,
      style: GoogleFonts.reemKufi(
          textStyle: TextStyle(
        fontSize: fontsize,
        fontWeight: FontWeight.bold,
      )),
      colors: [
        Theme.of(context).colorScheme.primary,
        Theme.of(context).colorScheme.secondary
      ],
      gradientDirection: Gradient_Direction(context),
    );
  }
}

class PrimaryLine extends StatelessWidget {
  String label;
  TextAlign textaligne;
  double fontsize;
  Color textColor;
  FontWeight fontweight;

  PrimaryLine({
    super.key,
    required this.label,
    required this.textaligne,
    required this.textColor,
    this.fontsize = 25,
    this.fontweight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(label,
        textAlign: textaligne,
        style: GoogleFonts.reemKufi(
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontsize,
            color: textColor,
          ),
        ));
  }
}

class ScondaryLine extends StatelessWidget {
  String label;
  TextAlign textaligne;
  double fontsize;
  ScondaryLine(
      {super.key,
      required this.label,
      required this.textaligne,
      this.fontsize = 20});

  @override
  Widget build(BuildContext context) {
    return Text(label,
        textAlign: textaligne,
        style: GoogleFonts.notoKufiArabic(
          textStyle: TextStyle(
            fontSize: fontsize,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ));
  }
}

// ignore: must_be_immutable
class ItemText extends StatelessWidget {
  String label;
  double fontsize;
  ItemText({super.key, required this.label, this.fontsize = 20});

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: GoogleFonts.reemKufi(
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontsize,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ));
  }
}

class InformationItem extends StatelessWidget {
  String label;
  double fontsize;
  Color color;
  InformationItem(
      {super.key,
      required this.label,
      this.fontsize = 10,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: GoogleFonts.reemKufi(
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontsize,
            color: color,
          ),
        ));
  }
}

class ReadArticle extends StatelessWidget {
  String text;
  ReadArticle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      trimLines: 4,
      style: GoogleFonts.notoKufiArabic(
        textStyle: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      trimMode: TrimMode.Line,
      trimCollapsedText: 'Show more',
      trimExpandedText: 'Show less',
      moreStyle: GoogleFonts.notoKufiArabic(
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      lessStyle: GoogleFonts.notoKufiArabic(
        textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
