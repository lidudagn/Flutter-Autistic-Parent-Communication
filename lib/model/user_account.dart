// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserAccount {
  String id;
  bool is_active;
  bool is_verified;
  String email;
  String user_type;
  DateTime updatedAt;
  DateTime createdAt;
  UserAccount({
    required this.id,
    required this.is_active,
    required this.is_verified,
    required this.email,
    required this.user_type,
    required this.updatedAt,
    required this.createdAt,
  });

  UserAccount copyWith({
    String? id,
    bool? is_active,
    bool? is_verified,
    String? email,
    String? user_type,
    DateTime? updatedAt,
    DateTime? createdAt,
  }) {
    return UserAccount(
      id: id ?? this.id,
      is_active: is_active ?? this.is_active,
      is_verified: is_verified ?? this.is_verified,
      email: email ?? this.email,
      user_type: user_type ?? this.user_type,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'is_active': is_active,
      'is_verified': is_verified,
      'email': email,
      'user_type': user_type,
      'updatedAt': updatedAt.toString(),
      'createdAt': createdAt.toString(),
    };
  }

  factory UserAccount.fromMap(Map<String, dynamic> map) {
    return UserAccount(
      id: map['id'] as String,
      is_active: map['is_active'] as bool,
      is_verified: map['is_verified'] as bool,
      email: map['email'] as String,
      user_type: map['user_type'] as String,
      updatedAt: DateTime.parse(map['updatedAt'] as String),
      createdAt: DateTime.parse(map['createdAt'] as String),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserAccount.fromJson(String source) =>
      UserAccount.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserAccount(id: $id, is_active: $is_active, is_verified: $is_verified, email: $email, user_type: $user_type, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(covariant UserAccount other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.is_active == is_active &&
        other.is_verified == is_verified &&
        other.email == email &&
        other.user_type == user_type &&
        other.updatedAt == updatedAt &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        is_active.hashCode ^
        is_verified.hashCode ^
        email.hashCode ^
        user_type.hashCode ^
        updatedAt.hashCode ^
        createdAt.hashCode;
  }
}
