// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String token_type;
  final String access_token;

  UserModel({
    required this.token_type,
    required this.access_token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token_type': token_type,
      'access_token': access_token,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      token_type: map['token_type'] as String,
      access_token: map['access_token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}