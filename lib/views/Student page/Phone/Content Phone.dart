import "package:flutter/material.dart";
import "dart:html" as html;
import "package:gradient_borders/box_borders/gradient_box_border.dart";
import "package:ipe_application/Constants/Variables.dart";
import "package:ipe_application/Constants/colors.dart";
import "package:ipe_application/Widgets/Gredient%20divider.dart";
import "package:ipe_application/views/Home/Phone/foot%20page%20phone.dart";
import "package:ipe_application/Widgets/Articale%20wideget/Articale%20list.dart";
import "package:ipe_application/Widgets/Student%20page/Reserch%20widget.dart";
import "package:url_launcher/url_launcher.dart";

class ContentPhoneStudent extends StatelessWidget {
  const ContentPhoneStudent({super.key});

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
              ReserchBox(),
            ],
          ),
        ),
        GradientDivider(
          width: double.infinity,
        ),
        ArticalList(),
        footerPhone()
      ],
    );
  }
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
        onTap: () async {
          await html.window.open(URL, 'new tab');
        }, // Handle your callback.
        splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
        child: Ink(
          height: 120,
          width: 160,
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
