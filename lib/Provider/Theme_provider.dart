// Import necessary Flutter packages and dependencies
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Import custom theme from an external file
import 'package:ipe_application/theme/theme.dart';

// Create a class for managing and providing app themes
class ThemeProvider with ChangeNotifier {
  // Default theme is set to lightMode
  ThemeData _themeData = lightMode;

  // Default icon is set to dark mode icon with white color
  Icon _icon = const Icon(
    Icons.dark_mode,
    color: Colors.white,
  );

  // Getter for the icon
  Icon get icon => _icon;

  // Getter for the theme data
  ThemeData get themeData => _themeData;

  // Setter for updating theme data and notifying listeners
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // Setter for updating icon and notifying listeners
  set icon(Icon icon) {
    _icon = icon;
    notifyListeners();
  }

  // Method to toggle between light and dark themes
  void toggleTheme() {
    // Check if the current theme is light, if yes, switch to dark; and vice versa
    if (_themeData == lightMode) {
      themeData = DarkMode;
      // Update icon to dark mode icon with white color
      icon = const Icon(
        Icons.dark_mode,
        color: Colors.white,
      );
    } else {
      themeData = lightMode;
      // Update icon to light mode icon with black color
      icon = const Icon(
        Icons.light_mode,
        color: Colors.black,
      );
    }
  }

  void toggleIcon() {
    // Check if the current theme is light, if yes, switch to dark; and vice versa
    if (_themeData == lightMode) {
      // Update icon to dark mode icon with white color
      icon = const Icon(
        Icons.dark_mode,
        color: Colors.white,
      );
    } else {
      // Update icon to light mode icon with black color
      icon = const Icon(
        Icons.light_mode,
        color: Colors.white,
      );
    }
  }
}
