import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mboa_waste/config/palette.dart';
import 'package:mboa_waste/config/styles.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MapView extends StatefulWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  State<MapView> createState() => MapViewState();
}

class MapViewState extends State<MapView> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
    return Scaffold(
      body: GoogleMap(
        padding: const EdgeInsets.only(bottom: 18.0, top: 10.0),
        mapType: MapType.hybrid,
        initialCameraPosition: const CameraPosition(
          target: LatLng(3.871077024574833, 11.584026389488624),
          zoom: 19.151926040649414,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        circles: {
          Circle(
            circleId: const CircleId('1'),
            center: const LatLng(3.942232873265923, 16.518191532038795),
            radius: 100,
            fillColor: Palette.primary,
            strokeColor: Palette.dark,
            strokeWidth: 1,
          ),
          Circle(
            circleId: const CircleId('2'),
            center: const LatLng(3.942232873265923, 16.518191532038795),
            radius: 100,
            fillColor: Palette.primary,
            strokeColor: Palette.dark,
            strokeWidth: 1,
          ),
        },
        markers: {
          const Marker(
              markerId: MarkerId('mboabin8113'),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: InfoWindow(
                  title: "Mboabin Messassi",
                  snippet: "Mboa bin located in Messassi, near Zoatupsi"),
              position: LatLng(3.942232873265923, 11.518191532038795)),
          const Marker(
              markerId: MarkerId('mboabin8112'),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: InfoWindow(
                  title: "Mboabin Messassi",
                  snippet: "Mboa bin located in Messassi, near Zoatupsi"),
              position: LatLng(3.9420312137911986, 11.51875692350712)),
          const Marker(
              markerId: MarkerId('mboabin8119'),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: InfoWindow(
                  title: "Mboabin Messassi",
                  snippet: "Mboa bin located in Messassi, near Zoatupsi"),
              position: LatLng(3.9415341151368493, 11.517668732629094)),
          const Marker(
              markerId: MarkerId('mboabin8111'),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: InfoWindow(
                  title: "Mboabin Messassi",
                  snippet: "Mboa bin located in Messassi, near Zoatupsi"),
              position: LatLng(3.94266865168059, 11.51917706159022)),
          const Marker(
              markerId: MarkerId('mboabin8110'),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: InfoWindow(
                  title: "Mboabin Messassi",
                  snippet: "Mboa bin located in Messassi, near Zoatupsi"),
              position: LatLng(3.9420312137911986, 11.51875692350712)),
          Marker(
              markerId: const MarkerId('mboabin8101'),
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32.0),
                            topRight: Radius.circular(32.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              children: [
                                Text(
                                  "MBOABIN-008TH",
                                  style: Styles.designWith(
                                      color: Palette.primary,
                                      size: 20.0,
                                      bold: true),
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Iconsax.location,
                                            color: Palette.primary),
                                        const Text("Yaounde I, Messassi"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Iconsax.activity,
                                            color: Palette.primary),
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
                                    title: ChartTitle(
                                        text: 'Waste Collection Analysis'),
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
                                          xValueMapper: (MboaData data, _) =>
                                              data.day,
                                          yValueMapper: (MboaData data, _) =>
                                              data.state,
                                          dataLabelMapper: (MboaData data, _) =>
                                              data.day,
                                          dataLabelSettings:
                                              const DataLabelSettings(
                                                  isVisible: true)),
                                    ]),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                  title: "Mboabin Messassi",
                  snippet: "Mboa bin located in Messassi, near Zoatupsi"),
              position: const LatLng(3.94170710169969, 11.518659002751367)),
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final GoogleMapController controller = await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(
              const CameraPosition(
                  bearing: 192.8334901395799,
                  target: LatLng(3.94266865168059, 11.51917706159022),
                  tilt: 59.440717697143555,
                  zoom: 19.151926040649414)));
        },
        label: const Text("Go"),
        icon: const Icon(LineIcons.plusCircle),
      ),
    );
  }
}

class MboaData {
  final String day;
  final double state;

  MboaData(this.day, this.state);
}










   // SfCartesianChart(
                                //     primaryXAxis:
                                //         CategoryAxis(name: "Waste Amount"),
                                //     // Chart title
                                //     title: ChartTitle(
                                //         text: 'Waste production analysis'),

                                //     // Enable tooltip
                                //     tooltipBehavior: TooltipBehavior(
                                //         enable: true,
                                //         header: '',
                                //         canShowMarker: false,
                                //         format: 'point.x : point.y'),
                                //     series: <BarSeries<MboaData, String>>[
                                //       BarSeries<MboaData, String>(
                                //           dataSource: <MboaData>[
                                //             MboaData('Jan', 35),
                                //             MboaData('Feb', 28),
                                //             MboaData('Mar', 34),
                                //             MboaData('Apr', 32),
                                //             MboaData('May', 40)
                                //           ],
                                //           xValueMapper: (MboaData sales, _) =>
                                //               sales.day,
                                //           yValueMapper: (MboaData sales, _) =>
                                //               sales.state,
                                          // Enable data label
                                //           dataLabelSettings:
                                //               const DataLabelSettings(
                                //                   isVisible: true)),
                                //     ]),