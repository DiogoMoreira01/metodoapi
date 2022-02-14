import 'dart:convert';

import 'package:getxapi/model/user_type.dart';

class UserModel {
  late String id;
  late String name;
  late String username;
  late List<UserType> types;
  UserModel({
    required this.id,
    required this.name,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'username': username,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      username: map['username'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
