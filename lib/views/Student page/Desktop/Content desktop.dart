import "package:flutter/material.dart";
import 'dart:html' as html;
import "package:flutter/widgets.dart";
import "package:ipe_application/Constants/Variables.dart";
import "package:ipe_application/Widgets/Gredient%20divider.dart";
import "package:ipe_application/views/Home/Desktop/foot%20page%20desktop.dart";
import "package:ipe_application/Widgets/Articale%20wideget/Articale%20list.dart";
import "package:ipe_application/views/Student%20page/Phone/Content%20Phone.dart";
import "package:ipe_application/Widgets/Student%20page/Reserch%20widget.dart";

class ContentDesktopStudent extends StatelessWidget {
  const ContentDesktopStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(
          height: 110,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Expanded(flex: 3, child: ReserchBox()),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GameButton(image: Image_JDM, URL: URL_JDM),
                        GameButton(image: Image_JDF, URL: URL_JDA),
                        GameButton(image: Image_JDA, URL: URL_JDA)
                      ],
                    ),
                  ),
                ))
          ],
        ),
        GradientDivider(
          width: double.infinity,
        ),
        ArticalList(),
        const footerDesktop()
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
        0,
        2,
        0,
        2,
      ),
      child: InkWell(
        onTap: () async {
          await html.window.open(URL, 'new tab');
        }, // Handle your callback.
        splashColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
        child: Ink(
          height: 200,
          width: 250,
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
