import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:ipe_application/Widgets/Text%20widgets.dart";
import "package:ipe_application/class/articale%20class.dart";
import "package:ipe_application/function/Home/Home_function.dart";

class ArticaleContent extends StatelessWidget {
  const ArticaleContent({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PrimaryLine(
            label: article.teacherName,
            textaligne: TextAlignement(context),
            textColor: Theme.of(context).colorScheme.onBackground,
            fontsize: 30,
          ),
          SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InformationItem(
                  label: article.grade,
                  color: Theme.of(context).colorScheme.primary,
                  fontsize: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                InformationItem(
                  label: article.level,
                  color: Theme.of(context).colorScheme.secondary,
                  fontsize: 20,
                ),
              ],
            ),
          ),
          ReadArticle(text: article.content),
          InformationItem(
            label: "date : " + article.date,
            color: Theme.of(context).colorScheme.secondary,
            fontsize: 15,
          )
        ],
      ),
    );
  }
}
