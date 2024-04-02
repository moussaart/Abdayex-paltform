import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:ipe_application/Widgets/Gradient%20button.dart";
import "package:ipe_application/class/articale%20class.dart";

class ArticaleData extends StatelessWidget {
  const ArticaleData({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 200,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(25),
                  child: Image.asset(article.image,
                      fit: BoxFit.cover), // Image radius
                )),
          ),
          InkWell(
            onTap: () {
              print(article.pdf);
            },
            child: GestureDetector(
              onTap: () {
                print("ok");
              },
              child: GradientButton(
                text: "PDF",
              ),
            ),
          )
        ],
      ),
    );
  }
}
