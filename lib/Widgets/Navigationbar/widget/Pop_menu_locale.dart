import 'package:flutter/material.dart';
import 'package:ipe_application/Provider/Localization_provider.dart';
import 'package:provider/provider.dart';
import 'package:simple_icons/simple_icons.dart';

class PopMenuLcale extends StatelessWidget {
  const PopMenuLcale({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
      child: PopupMenuButton<int>(
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 1,
            child: Text(
              "EN ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const PopupMenuItem(
            value: 2,
            child: Text(
              "FR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const PopupMenuItem(
            value: 3,
            child: Text(
              "AR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
        onSelected: (result) {
          Provider.of<LocaliztionProvider>(context, listen: false)
              .togglelocale(result);
        },
        child: Container(
          height: double.infinity,
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: StadiumBorder(
              side: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimary, width: 2),
            ),
          ),
          child: const Icon(
            Icons.translate,
            size: 25,
          ),
        ),
      ),
    );
  }
}

class PopMenuLcaleTablet extends StatelessWidget {
  const PopMenuLcaleTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(1, 0, 4, 0),
      child: PopupMenuButton<int>(
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 1,
            child: Text(
              "EN ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const PopupMenuItem(
            value: 2,
            child: Text(
              "FR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const PopupMenuItem(
            value: 3,
            child: Text(
              "AR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
        onSelected: (result) {
          Provider.of<LocaliztionProvider>(context, listen: false)
              .togglelocale(result);
        },
        child: Container(
          height: double.infinity,
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: StadiumBorder(
              side: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimary, width: 2),
            ),
          ),
          child: const Icon(
            Icons.translate,
            size: 20,
          ),
        ),
      ),
    );
  }
}

class PopMenuLcalePhone extends StatelessWidget {
  const PopMenuLcalePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(1, 0, 4, 0),
      child: PopupMenuButton<int>(
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 1,
            child: Text(
              "EN ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const PopupMenuItem(
            value: 2,
            child: Text(
              "FR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const PopupMenuItem(
            value: 3,
            child: Text(
              "AR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
        onSelected: (result) {
          Provider.of<LocaliztionProvider>(context, listen: false)
              .togglelocale(result);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: ShapeDecoration(
              color: Theme.of(context).colorScheme.background,
              shape: StadiumBorder(
                side: BorderSide(
                    color: Theme.of(context).colorScheme.onPrimary, width: 2),
              ),
            ),
            child: const Icon(
              Icons.translate,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }
}
