import "package:flutter/material.dart";
import 'dart:html' as html;
import "package:gradient_borders/box_borders/gradient_box_border.dart";
import "package:ipe_application/Constants/Variables.dart";
import "package:ipe_application/Constants/colors.dart";
import "package:ipe_application/Widgets/Gredient%20divider.dart";
import "package:ipe_application/views/Home/Tablet/foot%20page%20tablet.dart";
import "package:ipe_application/Widgets/Articale%20wideget/Articale%20list.dart";

import "../../../Widgets/Student page/Reserch widget.dart";

class ContentTabletStudent extends StatelessWidget {
  const ContentTabletStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(
          height: 110,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GameButton(image: Image_JDM, URL: URL_JDM),
                      GameButton(image: Image_JDF, URL: URL_JDF),
                      GameButton(image: Image_JDA, URL: URL_JDA)
                    ],
                  ),
                ),
              ),
              const ReserchBox(),
            ],
          ),
        ),
        GradientDivider(
          width: double.infinity,
        ),
        const ArticalList(),
        const footerTablet()
      ],
    );
  }
}

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          border: GradientBoxBorder(
            gradient: LinearGradient(colors: [
              Theme.of(context).colorScheme.primary,
              scand_color,
              third_color,
              Theme.of(context).colorScheme.secondary
            ]),
            width: 4,
          ),
          borderRadius: BorderRadius.circular(16)),
      child: const Column(
        children: [
          SizedBox(
            width: 500,
          )
        ],
      ),
    ),
  );
}

class GameButton extends StatelessWidget {
  String image;
  String URL;
  GameButton({super.key, required this.image, required this.URL});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        2,
        0,
        2,
        0,
      ),
      child: InkWell(
        onTap: () {
          html.window.open(URL, 'new tab');
        }, // Handle your callback.
        splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
        child: Ink(
          height: 150,
          width: 190,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
