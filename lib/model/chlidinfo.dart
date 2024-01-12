// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class childInfo {
  String first_name;
  String last_name;
  String gender;
  String birthday;
  String description;
  bool therapy_history;
  childInfo({
    required this.first_name,
    required this.last_name,
    required this.gender,
    required this.birthday,
    required this.description,
    required this.therapy_history,
  });
 

  childInfo copyWith({
    String? first_name,
    String? last_name,
    String? gender,
    String? birthday,
    String? description,
    bool? therapy_history,
  }) {
    return childInfo(
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      gender: gender ?? this.gender,
      birthday: birthday ?? this.birthday,
      description: description ?? this.description,
      therapy_history: therapy_history ?? this.therapy_history,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first_name': first_name,
      'last_name': last_name,
      'gender': gender,
      'birthday': birthday,
      'description': description,
      'therapy_history': therapy_history,
    };
  }

  factory childInfo.fromMap(Map<String, dynamic> map) {
    return childInfo(
      first_name: map['first_name'] as String,
      last_name: map['last_name'] as String,
      gender: map['gender'] as String,
      birthday: map['birthday'] as String,
      description: map['description'] as String,
      therapy_history: map['therapy_history'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory childInfo.fromJson(String source) => childInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'childInfo(first_name: $first_name, last_name: $last_name, gender: $gender, birthday: $birthday, description: $description, therapy_history: $therapy_history)';
  }

  @override
  bool operator ==(covariant childInfo other) {
    if (identical(this, other)) return true;
  
    return 
      other.first_name == first_name &&
      other.last_name == last_name &&
      other.gender == gender &&
      other.birthday == birthday &&
      other.description == description &&
      other.therapy_history == therapy_history;
  }

  @override
  int get hashCode {
    return first_name.hashCode ^
      last_name.hashCode ^
      gender.hashCode ^
      birthday.hashCode ^
      description.hashCode ^
      therapy_history.hashCode;
  }
}
