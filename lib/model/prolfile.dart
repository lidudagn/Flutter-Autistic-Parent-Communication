// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Profile {
  String id;
  String fullName;
  int follower;
  String proImageUrl;
  Profile({
    required this.id,
    required this.fullName,
    required this.follower,
    required this.proImageUrl,
  });

  Profile copyWith({
    String? id,
    String? fullName,
    int? follower,
    String? proImageUrl,
  }) {
    return Profile(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      follower: follower ?? this.follower,
      proImageUrl: proImageUrl ?? this.proImageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'fullName': fullName,
      'follower': follower,
      'proImageUrl': proImageUrl,
    };
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    return Profile(
      id: map['id'] as String,
      fullName: map['fullName'] as String,
      follower: map['follower'] as int,
      proImageUrl: map['proImageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromJson(String source) =>
      Profile.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Profile(id: $id, fullName: $fullName, follower: $follower, proImageUrl: $proImageUrl)';
  }

  @override
  bool operator ==(covariant Profile other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.fullName == fullName &&
        other.follower == follower &&
        other.proImageUrl == proImageUrl;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        fullName.hashCode ^
        follower.hashCode ^
        proImageUrl.hashCode;
  }
}
