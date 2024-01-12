// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class signup {
  String email;
  String password;
  String user_type;
  signup({
    required this.email,
    required this.password,
    required this.user_type,
  });

  signup copyWith({
    String? email,
    String? password,
    String? user_type,
  }) {
    return signup(
      email: email ?? this.email,
      password: password ?? this.password,
      user_type: user_type ?? this.user_type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
      'user_type': user_type,
    };
  }

  factory signup.fromMap(Map<String, dynamic> map) {
    return signup(
      email: map['email'] as String,
      password: map['password'] as String,
      user_type: map['user_type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory signup.fromJson(String source) =>
      signup.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'signup(email: $email, password: $password, user_type: $user_type)';

  @override
  bool operator ==(covariant signup other) {
    if (identical(this, other)) return true;

    return other.email == email &&
        other.password == password &&
        other.user_type == user_type;
  }

  @override
  int get hashCode => email.hashCode ^ password.hashCode ^ user_type.hashCode;
}
