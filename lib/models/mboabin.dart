import 'dart:convert';

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
  final Coordinates location;
  final String councilID;

  Mboabin(
      {required this.id,
      required this.name,
      required this.location,
      required this.councilID});

  Mboabin copyWith({
    String? id,
    String? name,
    Coordinates? location,
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
      'location': location.toMap(),
      'councilID': councilID,
    };
  }

  factory Mboabin.fromMap(Map<String, dynamic> map) {
    return Mboabin(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      location: Coordinates.fromMap(map['location']),
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

/// ⚡⚡⚡ ---------- CLASS COORDINATES ------------------⚡⚡⚡
///
/// Contains model of gelocation coordinates to easily integrate markers
/// and location points on the map.
/// Data Attributes:
/// 📌 lattitude: lattitude of the mboabin location ✅
/// 📌 longitude: longitude of the mboabin location ✅
///
class Coordinates {
  final String latittude;
  final String longitude;

  Coordinates(
    this.latittude,
    this.longitude,
  );

  Coordinates copyWith({
    String? latittude,
    String? longitude,
  }) {
    return Coordinates(
      latittude ?? this.latittude,
      longitude ?? this.longitude,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'latittude': latittude,
      'longitude': longitude,
    };
  }

  factory Coordinates.fromMap(Map<String, dynamic> map) {
    return Coordinates(
      map['latittude'] ?? '',
      map['longitude'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Coordinates.fromJson(String source) =>
      Coordinates.fromMap(json.decode(source));

  @override
  String toString() =>
      'Coordinates(latittude: $latittude, longitude: $longitude)';
}
