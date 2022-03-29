import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mboa_waste/config/styles.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../config/palette.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'map_view.dart';

class MboaBinView extends StatefulWidget {
  MboaBinView({Key? key}) : super(key: key);
  static const routeName = '/mboabin';

  @override
  State<MboaBinView> createState() => _MboaBinViewState();

  String contentType = "Description";
}

class _MboaBinViewState extends State<MboaBinView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/city_bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            color: Palette.dark,
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            color: Palette.dark,
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.notifications),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Messassi III',
                        style: Styles.header,
                      ),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.contentType = "Description";
                                });
                              },
                              child: Text("description",
                                  style: Styles.designWith(
                                      color: widget.contentType == "Description"
                                          ? Palette.primary
                                          : Colors.black.withOpacity(0.8),
                                      size: 20.0,
                                      bold: widget.contentType == "Description"
                                          ? true
                                          : false)),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.contentType = "Statistics";
                                });
                              },
                              child: Text("Statistics",
                                  style: Styles.designWith(
                                      color: widget.contentType == "Statistics"
                                          ? Palette.primary
                                          : Colors.black.withOpacity(0.8),
                                      size: 20.0,
                                      bold: widget.contentType == "Statistics"
                                          ? true
                                          : false)),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  widget.contentType = "Comments";
                                });
                              },
                              child: Text("Comments",
                                  style: Styles.designWith(
                                      color: widget.contentType == "Comments"
                                          ? Palette.primary
                                          : Colors.black.withOpacity(0.8),
                                      size: 20.0,
                                      bold: widget.contentType == "Comments"
                                          ? true
                                          : false)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      widget.contentType == "Description"
                          ? const Description()
                          : widget.contentType == "Statistics"
                              ? const Statistics()
                              : const Comments(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Icon(LineIcons.mapMarker, color: Palette.primary),
              Text("Essos Hotel du plateau Yaounde", style: Styles.subHeader),
            ],
          ),
          Row(
            children: [
              Icon(LineIcons.clock, color: Palette.primary),
              Text("Friday, 3 March 2022 13:45", style: Styles.subHeader),
            ],
          ),
          const SizedBox(height: 20.0),
          SleekCircularSlider(
              appearance: CircularSliderAppearance(
                customColors: CustomSliderColors(
                  progressBarColor: Palette.primary,
                  trackColor: Palette.primary.withOpacity(0.3),
                  shadowColor: Palette.primary.withOpacity(0.3),
                ),
              ),
              onChange: (double value) {}),
        ],
      ),
    );
  }
}

class Comments extends StatelessWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Comments',
          style: Styles.header,
        ),
      ),
    );
  }
}

class Statistics extends StatelessWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Text(
                "MBOABIN-008TH",
                style: Styles.designWith(
                    color: Palette.primary, size: 20.0, bold: true),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Iconsax.location, color: Palette.primary),
                      const Text("Yaounde I, Messassi"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Iconsax.activity, color: Palette.primary),
                      const Text("78%"),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("More"),
                      Icon(CupertinoIcons.download_circle,
                          color: Palette.primary),
                    ],
                  ),
                ],
              ),
              SfCircularChart(
                  title: ChartTitle(text: 'Waste Collection Analysis'),
                  legend: Legend(isVisible: true),
                  series: <PieSeries<MboaData, String>>[
                    PieSeries<MboaData, String>(
                        explode: true,
                        explodeIndex: 0,
                        dataSource: <MboaData>[
                          MboaData('Jan', 35),
                          MboaData('Feb', 28),
                          MboaData('Mar', 34),
                          MboaData('Apr', 32),
                          MboaData('May', 40)
                        ],
                        xValueMapper: (MboaData data, _) => data.day,
                        yValueMapper: (MboaData data, _) => data.state,
                        dataLabelMapper: (MboaData data, _) => data.day,
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true)),
                  ]),
              ActionButton(
                title: "Download Stats",
                onTap: () {
                  print("hello button");
                },
                icon: const Icon(Icons.download, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final Icon? icon;
  ActionButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        decoration: BoxDecoration(
          color: Palette.primary,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ?? const SizedBox.shrink(),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style:
                    Styles.header.copyWith(color: Colors.white, fontSize: 20),
              )
            ]),
      ),
    );
  }
}

// CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
//         SliverAppBar(
//           expandedHeight: 300.0,
//           title: Text(
//             "Etoudi",
//             style: Styles.designWith(
//                 color: Palette.primary, size: 25.0, bold: false),
//           ),
//           // backgroundColor: CupertinoColors.activeGreen.withOpacity(.35),
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               border: Border.all(
//                 color: Palette.primary,
//                 width: 1.0,
//               ),
//               image: const DecorationImage(
//                 image: AssetImage('assets/images/city_bg.png'),
//                 fit: BoxFit.cover,
//               ),
//               borderRadius: BorderRadius.circular(12.0),
//             ),
//           ),
//         ),
        
//       ]),



