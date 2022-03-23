import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mboa_waste/config/styles.dart';

import '../config/palette.dart';

class MboabinView extends StatelessWidget {
  const MboabinView({Key? key}) : super(key: key);
  static const routeName = '/mboabin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
        SliverAppBar(
          expandedHeight: 300.0,
          title: Text(
            "Etoudi",
            style: Styles.designWith(
                color: Palette.primary, size: 25.0, bold: false),
          ),
          backgroundColor: CupertinoColors.activeGreen.withOpacity(.35),
          flexibleSpace: Container(
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
          ),
        ),
      ]),
    );
  }
}
