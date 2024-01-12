// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Organization {
  String organization_name;
  String address;
  String starting_year;
  String bio;
  dynamic profile_base64;
  dynamic lisence_base64;
  Organization({
    required this.organization_name,
    required this.address,
    required this.starting_year,
    required this.bio,
    required this.profile_base64,
    required this.lisence_base64,
  });

  Organization copyWith({
    String? organization_name,
    String? address,
    String? starting_year,
    String? bio,
    dynamic? profile_base64,
    dynamic? lisence_base64,
  }) {
    return Organization(
      organization_name: organization_name ?? this.organization_name,
      address: address ?? this.address,
      starting_year: starting_year ?? this.starting_year,
      bio: bio ?? this.bio,
      profile_base64: profile_base64 ?? this.profile_base64,
      lisence_base64: lisence_base64 ?? this.lisence_base64,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organization_name': organization_name,
      'address': address,
      'starting_year': starting_year,
      'bio': bio,
      'profile_base64': profile_base64,
      'lisence_base64': lisence_base64,
    };
  }

  factory Organization.fromMap(Map<String, dynamic> map) {
    return Organization(
      organization_name: map['organization_name'] as String,
      address: map['address'] as String,
      starting_year: map['starting_year'] as String,
      bio: map['bio'] as String,
      profile_base64: map['profile_base64'] as dynamic,
      lisence_base64: map['lisence_base64'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory Organization.fromJson(String source) => Organization.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Organization(organization_name: $organization_name, address: $address, starting_year: $starting_year, bio: $bio, profile_base64: $profile_base64, lisence_base64: $lisence_base64)';
  }

  @override
  bool operator ==(covariant Organization other) {
    if (identical(this, other)) return true;
  
    return 
      other.organization_name == organization_name &&
      other.address == address &&
      other.starting_year == starting_year &&
      other.bio == bio &&
      other.profile_base64 == profile_base64 &&
      other.lisence_base64 == lisence_base64;
  }

  @override
  int get hashCode {
    return organization_name.hashCode ^
      address.hashCode ^
      starting_year.hashCode ^
      bio.hashCode ^
      profile_base64.hashCode ^
      lisence_base64.hashCode;
  }
}
