import 'package:flutter/material.dart';
import 'package:mboa_waste/config/palette.dart';
import 'package:mboa_waste/config/styles.dart';

class CityBox extends StatelessWidget {
  const CityBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 160.0,
      child: Center(
        child: Text(
          "Yaounde",
          style: Styles.designWith(Palette.primary, 20, true),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Palette.primary,
          width: 1.0,
        ),
      ),
    );
  }
}
