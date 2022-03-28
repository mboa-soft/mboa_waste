import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mboa_waste/config/palette.dart';
import 'package:mboa_waste/config/styles.dart';
import 'package:mboa_waste/screens/screens.dart';
import 'package:mboa_waste/widgets/widgets.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return Scrollable(
      viewportBuilder: (context, position) => PersistentTabView(
        context,
        controller: controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        // hideNavigationBar: controller.index != 0 ? true : false,
        margin: const EdgeInsets.all(12.0),
        selectedTabScreenContext: (context) {},
        backgroundColor: Color(0xFF20B08E),
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(26.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1,
      ),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white54,
          title: Text(
            "Mboawaste",
            style: Styles.designWith(
                color: Palette.primary, size: 18.0, bold: true),
          ),
          centerTitle: true,
          elevation: 0.0,
          leading: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              radius: 25.0,
              backgroundImage: AssetImage('assets/images/profile_pic.jpeg'),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications, color: Palette.primary),
              onPressed: () {},
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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

List<Widget> _buildScreens() {
  return [
    const Main(),
    const Main(),
    const MapView(),
    const Profile(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary: CupertinoColors.white,
      inactiveColorPrimary: Colors.white70,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.compass),
      title: ("Locations"),
      activeColorPrimary: CupertinoColors.white,
      inactiveColorPrimary: Colors.white70,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(LineIcons.mapMarker),
      title: ("Mboabins"),
      activeColorPrimary: CupertinoColors.white,
      inactiveColorPrimary: Colors.white70,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(CupertinoIcons.person),
      title: ("Profile"),
      activeColorPrimary: CupertinoColors.white,
      inactiveColorPrimary: Colors.white70,
    ),
  ];
}
