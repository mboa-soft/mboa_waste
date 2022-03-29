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
          "Edea",
          style:
              Styles.designWith(color: Palette.primary, size: 20, bold: true),
        ),
      ),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/city_bg.jpg"),
          opacity: 0.5,
          fit: BoxFit.cover,
        ),
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Palette.primary,
          width: 1.0,
        ),
      ),
    );
  }
}
