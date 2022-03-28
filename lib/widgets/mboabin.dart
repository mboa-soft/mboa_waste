import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mboa_waste/config/palette.dart';
import 'package:mboa_waste/config/styles.dart';

import '../screens/screens.dart';

class Mboabin extends StatelessWidget {
  const Mboabin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) =>  MboaBinView()));
      },
      child: Padding(
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
              image: AssetImage('assets/images/city_bg.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.all(8.0) + const EdgeInsets.only(bottom: 10.0),
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        height: 35.0,
                        width: 68.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Palette.primary,
                            width: 1.0,
                          ),
                          color: Palette.dark,
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(LineIcons.trash, color: Palette.grey),
                              const SizedBox(width: 4.0),
                              const Text("70%"),
                            ],
                          ),
                        ))),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Etoudi",
                      style: Styles.designWith(
                          color: Palette.primary, size: 25.0, bold: true),
                    )),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        Icon(LineIcons.mapMarker, color: Palette.primary),
                        const Text("30km away"),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
