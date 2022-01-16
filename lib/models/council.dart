import 'dart:convert';

class Council {
  final String name;
  final String image;
  final String mayor;
  final String phone;
  final String localisation;
  Council({
    required this.name,
    required this.image,
    required this.mayor,
    required this.phone,
    required this.localisation,
  });

  Council copyWith({
    String? name,
    String? image,
    String? mayor,
    String? phone,
    String? localisation,
  }) {
    return Council(
      name: name ?? this.name,
      image: image ?? this.image,
      mayor: mayor ?? this.mayor,
      phone: phone ?? this.phone,
      localisation: localisation ?? this.localisation,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'mayor': mayor,
      'phone': phone,
      'localisation': localisation,
    };
  }

  factory Council.fromMap(Map<String, dynamic> map) {
    return Council(
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      mayor: map['mayor'] ?? '',
      phone: map['phone'] ?? '',
      localisation: map['localisation'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Council.fromJson(String source) =>
      Council.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Council(name: $name, image: $image, mayor: $mayor, phone: $phone, localisation: $localisation)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Council &&
        other.name == name &&
        other.image == image &&
        other.mayor == mayor &&
        other.phone == phone &&
        other.localisation == localisation;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        image.hashCode ^
        mayor.hashCode ^
        phone.hashCode ^
        localisation.hashCode;
  }
}
