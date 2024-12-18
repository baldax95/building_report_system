// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Building {
  final String id;
  final String name;

  Building({
    required this.id,
    required this.name,
  });

  Building copyWith({
    String? id,
    String? name,
  }) {
    return Building(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory Building.fromMap(Map<String, dynamic> map) {
    return Building(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Building.fromJson(String source) =>
      Building.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Building(id: $id, name: $name)';

  @override
  bool operator ==(covariant Building other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
