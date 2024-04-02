import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:ipe_application/Constants/Variables.dart";
import "package:ipe_application/Widgets/Articale%20wideget/Desktop/Articale%20wideget%20desktop.dart";
import "package:ipe_application/Widgets/Articale%20wideget/Phone/Articale%20wideget%20phone.dart";
import "package:ipe_application/Widgets/Gredient%20Containre.dart";
import "package:ipe_application/Widgets/Text%20widgets.dart";
import "package:responsive_builder/responsive_builder.dart";

class ArticalList extends StatelessWidget {
  const ArticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, diviceType) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: (articles.isEmpty)
            ? GredientContainer(
                reduis: 15,
                child: PrimaryLine(
                  label: "not exist",
                  textColor: Theme.of(context).colorScheme.onBackground,
                  textaligne: TextAlign.center,
                ))
            : SizedBox(
                width: double.infinity,
                height: 500,
                child: ListView.builder(
                  itemCount: articles.length,
                  itemBuilder: (context, index) => (diviceType.isMobile)
                      ? ArticaleCardPhone(
                          article: articles[index],
                        )
                      : ArticaleCardDesktop(article: articles[index]),
                )),
      );
    });
  }
}
