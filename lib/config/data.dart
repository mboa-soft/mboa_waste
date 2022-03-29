import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mboa_waste/models/mboabin.dart';

// Set<Marker> bins = {
//   const Marker(
//       markerId: MarkerId('mboabin8113'),
//       icon: BitmapDescriptor.defaultMarker,
//       infoWindow: InfoWindow(
//           title: "Mboabin Messassi",
//           snippet: "Mboa bin located in Messassi, near Zoatupsi"),
//       position: LatLng(3.7916299277935983, 10.1339014400457)),
//   const Marker(
//       markerId: MarkerId('mboabin8112'),
//       icon: BitmapDescriptor.defaultMarker,
//       infoWindow: InfoWindow(
//           title: "Mboabin Messassi",
//           snippet: "Mboa bin located in Messassi, near Zoatupsi"),
//       position: LatLng(3.7916550961638906, 10.134480531393462)),
//   const Marker(
//       markerId: MarkerId('mboabin8119'),
//       icon: BitmapDescriptor.defaultMarker,
//       infoWindow: InfoWindow(
//           title: "Mboabin Messassi",
//           snippet: "Mboa bin located in Messassi, near Zoatupsi"),
//       position: LatLng(3.7915066416788727, 10.134285249797253)),
//   const Marker(
//       markerId: MarkerId('mboabin8111'),
//       icon: BitmapDescriptor.defaultMarker,
//       infoWindow: InfoWindow(
//           title: "Mboabin Messassi",
//           snippet: "Mboa bin located in Messassi, near Zoatupsi"),
//       position: LatLng(3.7914230061009873, 10.134301343049765)),
//   const Marker(
//       markerId: MarkerId('mboabin8110'),
//       icon: BitmapDescriptor.defaultMarker,
//       infoWindow: InfoWindow(
//           title: "Mboabin Messassi",
//           snippet: "Mboa bin located in Messassi, near Zoatupsi"),
//       position: LatLng(3.79141899159305, 10.134143763285591)),
// };

List<Mboabin> mboabins = [
  Mboabin(
      id: '8116',
      name: "Edea-Evechee",
      location: const LatLng(3.79141899159305, 10.134143763285591),
      councilID: 'edeahack'),
  Mboabin(
      id: '8114',
      name: "Edea Voyageur",
      location: const LatLng(3.7914230061009873, 10.134301343049765),
      councilID: 'edeahack'),
  Mboabin(
      id: '1',
      name: "Ntoumba Pepinerie",
      location: const LatLng(3.7915066416788727, 10.134285249797253),
      councilID: 'edeahack'),
  Mboabin(
      id: '1',
      name: "Ntoumba Pepinerie",
      location: const LatLng(3.7916299277935983, 10.1339014400457),
      councilID: 'edeahack'),
  Mboabin(
      id: '1',
      name: "Ntoumba Pepinerie",
      location: const LatLng(3.7916299277935983, 10.1339014400457),
      councilID: 'edeahack'),
];
