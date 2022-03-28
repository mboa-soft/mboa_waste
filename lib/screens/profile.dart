import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../config/palette.dart';
import '../config/styles.dart';
import '../widgets/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric( horizontal: 16.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Icon(CupertinoIcons.back, color: CupertinoColors.black),
            Text(
              "Profile",
              style: Styles.header.copyWith(color: Palette.primary.withOpacity(0.7)),
            ),
            SizedBox(),
          ]),
          const SizedBox(height: 50.0),
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/images/profile_pic.jpeg"),
          ),
          const SizedBox(height: 20.0),
          Text(
            "Anzia Jurvis",
            style: Styles.header.copyWith( fontWeight: FontWeight.w700),
          
          ),
          Text("anzia.jurvis@gmail.com",style: Styles.subHeader.copyWith(color: Palette.primary.withOpacity(0.5), fontSize: 16.0, fontWeight: FontWeight.w600)),
          const SizedBox(height: 5.0),
          Text("69059606",style: Styles.subHeader.copyWith(color: Palette.primary.withOpacity(0.5), fontSize: 16.0, fontWeight: FontWeight.w600)),
          const SizedBox(height: 25.0),
          ActionButton(
            title: "Edit Profile",
            onTap: () {},
            icon: Icon(Icons.edit, color: Colors.white),
          ),
          // Button
          // Action

        ]),
      ),
    );
  }
}
