import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mboa_waste/config/palette.dart';
import 'package:mboa_waste/config/styles.dart';
import 'package:mboa_waste/widgets/widgets.dart';

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
          backgroundColor: Colors.white54,
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
            children: <Widget>[
              const SizedBox(height: 20.0),
              const Text(
                  "Recycling every single solid waste, Give it a second life, put it back into the value chain"),
              const SizedBox(height: 20.0),
              Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Icon(LineIcons.search),
                    ),
                    border: InputBorder.none,
                    hintText: "Give it a second life",
                    contentPadding: EdgeInsets.all(10.0),
                    hintStyle: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 70.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CityBox(),
                    );
                  },
                  itemCount: 10,
                  shrinkWrap: true,
                  addAutomaticKeepAlives: true,
                  physics: const BouncingScrollPhysics(),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 170.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Mboabin(),
                    );
                  },
                  itemCount: 10,
                  shrinkWrap: true,
                  addAutomaticKeepAlives: true,
                  physics: const BouncingScrollPhysics(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
