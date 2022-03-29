import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mboa_waste/screens/screens.dart';

import '../config/palette.dart';
import '../config/styles.dart';
import '../widgets/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: Colors.grey.withOpacity(0.1),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
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
            const SizedBox(height: 30.0),
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
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("Edit Profile", style: Styles.header),
                                  const SizedBox(height: 20.0),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "Name",
                                      hintStyle: Styles.subHeader.copyWith(
                                          color:
                                              Palette.primary.withOpacity(0.5)),
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      hintStyle: Styles.subHeader.copyWith(
                                          color:
                                              Palette.primary.withOpacity(0.5)),
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "Phone",
                                      hintStyle: Styles.subHeader.copyWith(
                                          color:
                                              Palette.primary.withOpacity(0.5)),
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "Address",
                                      hintStyle: Styles.subHeader.copyWith(
                                          color:
                                              Palette.primary.withOpacity(0.5)),
                                    ),
                                  ),
                                  const SizedBox(height: 20.0),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: "City",
                                      hintStyle: Styles.subHeader.copyWith(
                                          color:
                                              Palette.primary.withOpacity(0.5)),
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
                                  SizedBox(height: 20.0),
                                ]),
                          ),
                        ));
              },
              icon: const Icon(Icons.edit, color: Colors.white),
            ),
            SizedBox(height: 30.0),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: const [
                  OptionsTab(title: "Share App",icon: Icons.share),
                  OptionsTab(title: "Language",icon: LineIcons.globe, subHead: "English",),
                  OptionsTab(title: "Dark Mode",icon: LineIcons.moonAlt),
                  OptionsTab(title: "Log Out",icon: Icons.logout),
                
                ],
              ),
            ),
            // Button
            // Action
          ]),
        ),
      ),
    );
  }
}

class OptionsTab extends StatelessWidget {
  const OptionsTab({
    Key? key, required this.title, required this.icon, this.subHead,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final String? subHead;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(icon),
              ),
              SizedBox(width: 5.0),
              Text(title,
                  style: Styles.header.copyWith(color: Colors.black)),
            ],
          ),
          const SizedBox(),
          Row(
            children: [
              subHead != null
                  ? Text(subHead!,
                      style: Styles.subHeader.copyWith(
                          color: Colors.black.withOpacity(0.5)))
                  : const SizedBox.shrink(),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ],
      ),
    );
  }
}
