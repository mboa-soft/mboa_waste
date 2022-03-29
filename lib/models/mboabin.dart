import 'dart:convert';

import 'package:google_maps_flutter/google_maps_flutter.dart';

/// ⚡⚡⚡ ---------- CLASS MBOABIN ------------------⚡⚡⚡
/// @author: Baimam Boukar Jean Jacques
/// @since: March 27th 2022
/// Contains model of mboabins with various database interfacing
/// methods, utils for comparaisons, getters and setters.
/// Data Attributes:
/// 📌 id: unique identifier ✅
/// 📌 name: unique generated name for mboabins ✅
/// 📌 location: geolocation data for mboabins ✅
/// 📌 councilID: city council that actually implements the mboabin ✅
///
///
class Mboabin {
  final String id;
  final String name;
  final LatLng location;
  final String councilID;

  Mboabin(
      {required this.id,
      required this.name,
      required this.location,
      required this.councilID});

  Mboabin copyWith({
    String? id,
    String? name,
    LatLng? location,
    String? councilID,
  }) {
    return Mboabin(
      id: id ?? this.id,
      name: name ?? this.name,
      location: location ?? this.location,
      councilID: councilID ?? this.councilID,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'location': location,
      'councilID': councilID,
    };
  }

  factory Mboabin.fromMap(Map<String, dynamic> map) {
    return Mboabin(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      location: map['location'] ?? const LatLng(0, 0),
      councilID: map['councilID'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Mboabin.fromJson(String source) =>
      Mboabin.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Mboabin(id: $id, name: $name, location: $location, councilID: $councilID)';
  }
}
