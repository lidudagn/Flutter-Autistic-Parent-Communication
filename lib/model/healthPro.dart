// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class healthProfessional {
  String first_name;
  String last_name;
  String gender;
  String bio;
  String profile_pic;
  String lisence;
  dynamic experience;
  dynamic working_place;
  healthProfessional({
    required this.first_name,
    required this.last_name,
    required this.gender,
    required this.bio,
    required this.profile_pic,
    required this.lisence,
    required this.experience,
    required this.working_place,
  });

  healthProfessional copyWith({
    String? first_name,
    String? last_name,
    String? gender,
    String? bio,
    String? profile_pic,
    String? lisence,
    dynamic? experience,
    dynamic? working_place,
  }) {
    return healthProfessional(
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      gender: gender ?? this.gender,
      bio: bio ?? this.bio,
      profile_pic: profile_pic ?? this.profile_pic,
      lisence: lisence ?? this.lisence,
      experience: experience ?? this.experience,
      working_place: working_place ?? this.working_place,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first_name': first_name,
      'last_name': last_name,
      'gender': gender,
      'bio': bio,
      'profile_pic': profile_pic,
      'lisence': lisence,
      'experience': experience,
      'working_place': working_place,
    };
  }

  factory healthProfessional.fromMap(Map<String, dynamic> map) {
    return healthProfessional(
      first_name: map['first_name'] as String,
      last_name: map['last_name'] as String,
      gender: map['gender'] as String,
      bio: map['bio'] as String,
      profile_pic: map['profile_pic'] as String,
      lisence: map['lisence'] as String,
      experience: map['experience'] as dynamic,
      working_place: map['working_place'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory healthProfessional.fromJson(String source) =>
      healthProfessional.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'healthProfessional(first_name: $first_name, last_name: $last_name, gender: $gender, bio: $bio, profile_pic: $profile_pic, lisence: $lisence, experience: $experience, working_place: $working_place)';
  }

  @override
  bool operator ==(covariant healthProfessional other) {
    if (identical(this, other)) return true;

    return other.first_name == first_name &&
        other.last_name == last_name &&
        other.gender == gender &&
        other.bio == bio &&
        other.profile_pic == profile_pic &&
        other.lisence == lisence &&
        other.experience == experience &&
        other.working_place == working_place;
  }

  @override
  int get hashCode {
    return first_name.hashCode ^
        last_name.hashCode ^
        gender.hashCode ^
        bio.hashCode ^
        profile_pic.hashCode ^
        lisence.hashCode ^
        experience.hashCode ^
        working_place.hashCode;
  }
}
