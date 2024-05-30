import 'package:flutter/material.dart';

const Color customColor = Color(0xFF031DE0);

const List<Color> colorThemes = [
  customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor < 7 && selectedColor >= 0,
            "Colors muste be between 0 and ${colorThemes.length - 1}");

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorThemes[selectedColor],
        brightness: Brightness.light);
  }
}
