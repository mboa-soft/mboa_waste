import 'package:flutter/widgets.dart';
import 'package:mboa_waste/config/palette.dart';

class Styles {
  static TextStyle header = TextStyle(
    color: Palette.primary,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle designWith(Color color, double size, bool bold) => TextStyle(
        color: color,
        fontSize: 16.0,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      );
}
