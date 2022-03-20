import 'package:flutter/material.dart';
import 'package:mboa_waste/config/palette.dart';
import 'package:mboa_waste/config/styles.dart';

class Mboabin extends StatelessWidget {
  const Mboabin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 250.0,
        height: 170.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Palette.primary,
            width: 1.0,
          ),
          image: const DecorationImage(
            image: AssetImage('assets/images/mboabin.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding:
              const EdgeInsets.all(8.0) + const EdgeInsets.only(bottom: 10.0),
          child: Stack(
            children: [
              const Align(
                  alignment: Alignment.topRight, child: Text("Mboabin")),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Etoudi",
                    style: Styles.designWith(Palette.primary, 35.0, false),
                  )),
              const Align(
                  alignment: Alignment.bottomLeft, child: Text("30km away")),
            ],
          ),
        ),
      ),
    );
  }
}
