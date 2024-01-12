// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Modrators {
  int id;
  String first_name;
  String last_name;
  DateTime createdAt;
  DateTime updatedAt;
  Modrators({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.createdAt,
    required this.updatedAt,
  });

  Modrators copyWith({
    int? id,
    String? first_name,
    String? last_name,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Modrators(
      id: id ?? this.id,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'first_name': first_name,
      'last_name': last_name,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt.millisecondsSinceEpoch,
    };
  }

  factory Modrators.fromMap(Map<String, dynamic> map) {
    return Modrators(
      id: map['id'] as int,
      first_name: map['first_name'] as String,
      last_name: map['last_name'] as String,
      createdAt: DateTime.parse(map['createdAt'] as String),
      updatedAt: DateTime.parse(map['updatedAt'] as String),
    );
  }

  String toJson() => json.encode(toMap());

  factory Modrators.fromJson(String source) =>
      Modrators.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Modrators(id: $id, first_name: $first_name, last_name: $last_name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(covariant Modrators other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.first_name == first_name &&
        other.last_name == last_name &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        first_name.hashCode ^
        last_name.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
