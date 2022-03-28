import 'package:flutter/widgets.dart';
import 'package:mboa_waste/config/palette.dart';

class Styles {
  static TextStyle header = TextStyle(
    color: Palette.primary,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );
  static TextStyle subHeader = TextStyle(
     color: Palette.primary.withOpacity(0.8),
    fontSize: 15.0,
    fontWeight: FontWeight.w400,
  );

  static TextStyle designWith(
          {required Color color, required double size, required bool bold}) =>
      TextStyle(
        color: color,
        fontSize: 16.0,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      );
}
