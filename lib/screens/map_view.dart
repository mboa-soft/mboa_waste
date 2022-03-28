import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mboa_waste/config/palette.dart';
import 'package:mboa_waste/config/styles.dart';
import 'package:mboa_waste/screens/screens.dart';
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
        floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      body: GoogleMap(
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
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
            center: const LatLng(3.942232873265923, 16.518191532038795),
            radius: 100,
            fillColor: Palette.primary,
            strokeColor: Palette.dark,
            circleId: const CircleId('1'),
            strokeWidth: 1
          ),
          Circle(
            circleId: const CircleId('2'),
            center: const LatLng(3.942232873265923, 16.518191532038795),
            radius: 100,
            fillColor: Palette.primary,
            strokeColor: Palette.dark,
            strokeWidth: 1
          ),
        },
        markers: {
          const Marker(
              markerId: MarkerId('mboabin8113'),
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: InfoWindow(
                  title: "Mboabin Messassi",
                  snippet: "Mboabin located in Messassi, near Zoatupsi"),
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
                  title: "MboaBin Messassi",
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MboaBinView()));
              },
              icon: BitmapDescriptor.defaultMarker,
              infoWindow: const InfoWindow(
                  title: "Mboabin Messassi",
                  snippet: "Mboa bin located in Messassi, near Zoatupsi"),
              position: const LatLng(3.94170710169969, 11.518659002751367)),
        },
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 40.0, right: 10),
        child: FloatingActionButton.extended(
          onPressed: () async {
            final GoogleMapController controller = await _controller.future;
            controller.animateCamera(CameraUpdate.newCameraPosition(
                const CameraPosition(
                    bearing: 192.8334901395799,
                    target: LatLng(3.94266865168059, 11.51917706159022),
                    tilt: 59.440717697143555,
                    zoom: 19.151926040649414,)));
          },
          label: const Text("Go"),
          icon:  const Icon(LineIcons.plusCircle),
        ),
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