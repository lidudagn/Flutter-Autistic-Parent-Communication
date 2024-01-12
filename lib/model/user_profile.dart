// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserProfile {
  String first_name;
  String last_name;
  String gender;
  String relation;
  String bio;
  String base64;
  UserProfile({
    required this.first_name,
    required this.last_name,
    required this.gender,
    required this.relation,
    required this.bio,
    required this.base64,
  });
 

  UserProfile copyWith({
    String? first_name,
    String? last_name,
    String? gender,
    String? relation,
    String? bio,
    String? base64,
  }) {
    return UserProfile(
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      gender: gender ?? this.gender,
      relation: relation ?? this.relation,
      bio: bio ?? this.bio,
      base64: base64 ?? this.base64,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first_name': first_name,
      'last_name': last_name,
      'gender': gender,
      'relation': relation,
      'bio': bio,
      'base64': base64,
    };
  }

  factory UserProfile.fromMap(Map<String, dynamic> map) {
    return UserProfile(
      first_name: map['first_name'] as String,
      last_name: map['last_name'] as String,
      gender: map['gender'] as String,
      relation: map['relation'] as String,
      bio: map['bio'] as String,
      base64: map['base64'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserProfile.fromJson(String source) => UserProfile.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserProfile(first_name: $first_name, last_name: $last_name, gender: $gender, relation: $relation, bio: $bio, base64: $base64)';
  }

  @override
  bool operator ==(covariant UserProfile other) {
    if (identical(this, other)) return true;
  
    return 
      other.first_name == first_name &&
      other.last_name == last_name &&
      other.gender == gender &&
      other.relation == relation &&
      other.bio == bio &&
      other.base64 == base64;
  }

  @override
  int get hashCode {
    return first_name.hashCode ^
      last_name.hashCode ^
      gender.hashCode ^
      relation.hashCode ^
      bio.hashCode ^
      base64.hashCode;
  }
}
