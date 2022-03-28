import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mboa_waste/screens/screens.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: const Icon(CupertinoIcons.back),
              color: CupertinoColors.black,
              onPressed: () {
                controller.jumpToTab(0);
              },
            ),
            Text(
              "Profile",
              style: Styles.header
                  .copyWith(color: Palette.primary.withOpacity(0.7)),
            ),
            const SizedBox(),
          ]),
          const SizedBox(height: 50.0),
          const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/images/profile_pic.jpeg"),
          ),
          const SizedBox(height: 20.0),
          Text(
            "Anzia Jurvis",
            style: Styles.header.copyWith(fontWeight: FontWeight.w700),
          ),
          Text("anzia.jurvis@gmail.com",
              style: Styles.subHeader.copyWith(
                  color: Palette.primary.withOpacity(0.5),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 5.0),
          Text("69059606",
              style: Styles.subHeader.copyWith(
                  color: Palette.primary.withOpacity(0.5),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 25.0),
          ActionButton(
            title: "Edit Profile",
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 15, right: 15, bottom: 40.0),
                        child: SingleChildScrollView(
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text("Edit Profile", style: Styles.header),
                            const SizedBox(height: 20.0),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Name",
                                hintStyle: Styles.subHeader.copyWith(
                                    color: Palette.primary.withOpacity(0.5)),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: Styles.subHeader.copyWith(
                                    color: Palette.primary.withOpacity(0.5)),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Phone",
                                hintStyle: Styles.subHeader.copyWith(
                                    color: Palette.primary.withOpacity(0.5)),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Address",
                                hintStyle: Styles.subHeader.copyWith(
                                    color: Palette.primary.withOpacity(0.5)),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            TextField(
                              decoration: InputDecoration(
                                hintText: "City",
                                hintStyle: Styles.subHeader.copyWith(
                                    color: Palette.primary.withOpacity(0.5)),
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            ActionButton(
                                title: "Update",
                                icon: const Icon(Icons.check,
                                    color: Colors.white),
                                onTap: () {
                                  Navigator.pop(context);
                                }),
                          ]),
                        ),
                      ));
            },
            icon: const Icon(Icons.edit, color: Colors.white),
          ),
          // Button
          // Action
        ]),
      ),
    );
  }
}
