import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mboa_waste/config/data.dart';
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
  GoogleMapController? _mapController;
  final Set<Circle> _circles = <Circle>{
    Circle(
      circleId: const CircleId('1'),
      center: const LatLng(3.79191222975688, 10.131583234117286),
      radius: 18,
      fillColor: Palette.primary.withOpacity(.15),
      strokeColor: Palette.dark,
      strokeWidth: 1,
    ),
    Circle(
      circleId: const CircleId('2'),
      center: const LatLng(3.7929331852976023, 10.134725907639123),
      radius: 36,
      fillColor: Colors.red.withOpacity(.085),
      strokeColor: Palette.dark,
      strokeWidth: 1,
    ),
  };
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
    }
    return Scaffold(

      body: Stack(
        children: [
          // Positioned(
          //     top: 45.0,
          //     child: Row(
          //       children: [
          //         IconButton(
          //             onPressed: () {},
          //             icon:
          //                 Icon(Iconsax.map, size: 32, color: Palette.primary)),
          //         IconButton(
          //             onPressed: () {},
          //             icon: Icon(Iconsax.map, size: 32, color: Palette.primary))
          //       ],
          //     )),
          GoogleMap(
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            padding: const EdgeInsets.only(bottom: 18.0, top: 10.0),
            mapType: MapType.hybrid,
            initialCameraPosition: const CameraPosition(
              target: LatLng(3.791669144926595, 10.134238671434186),
              zoom: 19.151926040649414,
            ),
            // onLongPress: (LatLng latLng) {
            //   _circles.add(Circle(
            //     consumeTapEvents: true,
            //     circleId: const CircleId('blue'),
            //     center: latLng,
            //     radius: 200.0,
            //     fillColor: Colors.blue.shade500.withOpacity(.5),
            //     strokeColor: Colors.green.shade700.withOpacity(.7),
            //     strokeWidth: 5,
            //   ));

            //   setState(() {
            //     _mapController?.animateCamera(CameraUpdate.newLatLng(latLng));
            //   });
            // },
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            tileOverlays: {
              const TileOverlay(tileOverlayId: TileOverlayId('overlay'))
            },

            
            polygons: {
              Polygon(
                  geodesic: false,
                  strokeWidth: 4,
                  fillColor: Colors.transparent,
                  zIndex: 10,
                  strokeColor: Colors.red.withOpacity(.2),
                  polygonId: const PolygonId('polygon_1'),
                  holes: const [
                    [
                      LatLng(3.7926414838375844, 10.135785646384857),
                      LatLng(4.1191, 3.7994),
                      LatLng(3.8, 10.131583234117286),
                      LatLng(3.79191222975688, 10.131583234117286),
                    ],
                  ],
                  points: const [
                    LatLng(12.96699, 77.71096),
                    LatLng(10.1191, 3.7994),
                    LatLng(11.96699, 77.71096),
                    LatLng(9.1191, 3.7994)
                  ]),
            },
            circles: _circles,
            markers: mboabins
                .map(
                  (bin) => Marker(
                      markerId: MarkerId(bin.id),
                      onTap: () => showBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (context) => const SheetContainer()),
                      icon: BitmapDescriptor.defaultMarker,
                      infoWindow: InfoWindow(
                          title: bin.name,
                          snippet: "Mboa bin located in ${bin.councilID}"),
                      position: bin.location),
                )
                .toSet(),
          ),
        ],

      ),

      
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final GoogleMapController controller = await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(
              const CameraPosition(
                  bearing: 192.8334901395799,
                  target: LatLng(3.791669144926595, 10.134238671434186),
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

class SheetContainer extends StatelessWidget {
  const SheetContainer({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.all(14.0),
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
                          MboaData('Bata', 35),
                          MboaData('Olembe', 28),
                          MboaData('Emana', 34),
                          MboaData('Messassi', 32),
                          MboaData('Etoudi', 40)
                        ],
                        xValueMapper: (MboaData data, _) => data.day,
                        yValueMapper: (MboaData data, _) => data.state,
                        dataLabelMapper: (MboaData data, _) => data.day,
                        dataLabelSettings:
                            const DataLabelSettings(isVisible: true)),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
