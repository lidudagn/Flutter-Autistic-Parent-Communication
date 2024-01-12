// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Feed {
  dynamic post_base64;
  dynamic text;
  Feed({
    this.post_base64,
    this.text,
  });

  Feed copyWith({
    dynamic post_base64,
    dynamic text,
  }) {
    return Feed(
      post_base64: post_base64 ?? this.post_base64,
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'post_base64': post_base64,
      'text': text,
    };
  }

  factory Feed.fromMap(Map<String, dynamic> map) {
    return Feed(
      post_base64: map['post_base64'] as dynamic,
      text: map['text'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory Feed.fromJson(String source) =>
      Feed.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Feed(post_base64: $post_base64, text: $text)';

  @override
  bool operator ==(covariant Feed other) {
    if (identical(this, other)) return true;

    return other.post_base64 == post_base64 && other.text == text;
  }

  @override
  int get hashCode => post_base64.hashCode ^ text.hashCode;
}
