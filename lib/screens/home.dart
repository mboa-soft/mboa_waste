import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mboa_waste/config/palette.dart';
import 'package:mboa_waste/config/styles.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Mboawaste",
            style: Styles.designWith(Palette.primary, 18.0, true),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white30,
          leading: Icon(LineIcons.user, color: Palette.primary),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications, color: Palette.primary),
              onPressed: () {},
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: const <Widget>[
              SizedBox(height: 20.0),
              Text(
                  "Recycling every single solid waste, Give it a second life, put it back into the value chain")
            ],
          ),
        ),
      ),
    );
  }
}
