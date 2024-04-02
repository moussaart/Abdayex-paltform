import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";
import 'package:ipe_application/class/articale%20class.dart';
import 'package:ipe_application/generated/l10n.dart';

final String Image_1 = "assets/PNG/img_1.png";
final String Image_1_phone = "assets/PNG/img_1_phone.png";

final String Image_2 = "assets/PNG/img_2.png";

final String logo_svg = "assets/logo/logo.svg";
final String logo_png = "assets/logo/logo.png";
final String logo_svg_phone = "assets/logo/logo_svg_phone.svg";

final String Image_JDM = "assets/home/Jeux de maths.png";
final String Image_JDF = "assets/home/Jeux de français.png";
final String Image_JDA = "assets/home/Jeux de Anglais.png";

final String URL_JDF = "https://jeux.ieducatif.fr/jeux/francais/";
final String URL_JDM = "https://jeux.ieducatif.fr/jeux/maths/";
final String URL_JDA =
    "https://jeux.ieducatif.fr/jeux-educatifs/jeux-en-anglais/";

GlobalKey<ScaffoldState> homekey = GlobalKey<ScaffoldState>();
GlobalKey<ScaffoldState> teacherspacekey = GlobalKey<ScaffoldState>();

List<DropdownMenuEntry<String>> Grades(BuildContext context) {
  return [
    DropdownMenuEntry(value: "T", label: S.of(context).AllGrades),
    DropdownMenuEntry(value: "T", label: S.of(context).firstGegree),
    DropdownMenuEntry(value: "T", label: S.of(context).SecondGegree),
    DropdownMenuEntry(value: "T", label: S.of(context).ThirdGegree),
  ];
}

List<DropdownMenuEntry<String>> EducationalLevel(BuildContext context) {
  return [
    DropdownMenuEntry(value: "T", label: S.of(context).firstYearPrimary),
    DropdownMenuEntry(value: "T", label: S.of(context).secondYearPrimary),
    DropdownMenuEntry(value: "T", label: S.of(context).thirdYearPrimary),
    DropdownMenuEntry(value: "T", label: S.of(context).fourthYearPrimary),
    DropdownMenuEntry(value: "T", label: S.of(context).fifthYearPrimary),
    DropdownMenuEntry(value: "T", label: S.of(context).sixthYearPrimary),
  ];
}

var articles =
    List.generate(10, (index) => Article.generateSampleArticle(index));
