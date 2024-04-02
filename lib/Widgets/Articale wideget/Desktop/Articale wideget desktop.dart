import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:ipe_application/Widgets/Articale%20wideget/Articale%20content.dart";
import "package:ipe_application/Widgets/Articale%20wideget/Articale%20data.dart";
import "package:ipe_application/Widgets/Gredient%20Containre.dart";
import "package:ipe_application/class/articale%20class.dart";

class ArticaleCardDesktop extends StatelessWidget {
  Article article;
  ArticaleCardDesktop({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: GredientContainer(
        reduis: 15,
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(flex: 3, child: ArticaleContent(article: article)),
                Expanded(flex: 1, child: ArticaleData(article: article))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
