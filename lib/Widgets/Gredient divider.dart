import "package:flutter/material.dart";

class GradientDivider extends StatelessWidget {
  double width;
  GradientDivider({super.key, this.width = 800});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(150, 5, 150, 5),
      child: Container(
        width: width,
        height: 5, // Adjust the height of the divider as needed
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.topLeft,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary
            ], // Adjust gradient colors as needed
          ),
        ),
      ),
    );
  }
}
