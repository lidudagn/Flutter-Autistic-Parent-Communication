// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:autism_project/model/user_account.dart';

class FeedHome {
  String id;
  String text;
  String post_img;
  int no_of_likes;
  int no_of_comments;
  bool is_reported;
  int no_of_report;
  DateTime createdAt;
  DateTime updatedAt;
  UserAccount posting_user;
  FeedHome({
    required this.id,
    required this.text,
    required this.post_img,
    required this.no_of_likes,
    required this.no_of_comments,
    required this.is_reported,
    required this.no_of_report,
    required this.createdAt,
    required this.updatedAt,
    required this.posting_user,
  });

  FeedHome copyWith({
    String? id,
    String? text,
    String? post_img,
    int? no_of_likes,
    int? no_of_comments,
    bool? is_reported,
    int? no_of_report,
    DateTime? createdAt,
    DateTime? updatedAt,
    UserAccount? posting_user,
  }) {
    return FeedHome(
      id: id ?? this.id,
      text: text ?? this.text,
      post_img: post_img ?? this.post_img,
      no_of_likes: no_of_likes ?? this.no_of_likes,
      no_of_comments: no_of_comments ?? this.no_of_comments,
      is_reported: is_reported ?? this.is_reported,
      no_of_report: no_of_report ?? this.no_of_report,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      posting_user: posting_user ?? this.posting_user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'text': text,
      'post_img': post_img,
      'no_of_likes': no_of_likes,
      'no_of_comments': no_of_comments,
      'is_reported': is_reported,
      'no_of_report': no_of_report,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'updatedAt': updatedAt.millisecondsSinceEpoch,
      'posting_user': posting_user.toMap(),
    };
  }

  factory FeedHome.fromMap(Map<String, dynamic> map) {
    return FeedHome(
      id: map['id'] as String,
      text: map['text'] as String,
      post_img: map['post_img'] as String,
      no_of_likes: map['no_of_likes'] as int,
      no_of_comments: map['no_of_comments'] as int,
      is_reported: map['is_reported'] as bool,
      no_of_report: map['no_of_report'] as int,
      createdAt: DateTime.parse(map['createdAt'] as String),
      updatedAt: DateTime.parse(map['updatedAt'] as String),
      posting_user:
          UserAccount.fromMap(map['posting_user'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory FeedHome.fromJson(String source) =>
      FeedHome.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FeedHome(id: $id, text: $text, post_img: $post_img, no_of_likes: $no_of_likes, no_of_comments: $no_of_comments, is_reported: $is_reported, no_of_report: $no_of_report, createdAt: $createdAt, updatedAt: $updatedAt, posting_user: $posting_user)';
  }

  @override
  bool operator ==(covariant FeedHome other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.text == text &&
        other.post_img == post_img &&
        other.no_of_likes == no_of_likes &&
        other.no_of_comments == no_of_comments &&
        other.is_reported == is_reported &&
        other.no_of_report == no_of_report &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.posting_user == posting_user;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        text.hashCode ^
        post_img.hashCode ^
        no_of_likes.hashCode ^
        no_of_comments.hashCode ^
        is_reported.hashCode ^
        no_of_report.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        posting_user.hashCode;
  }
}
