// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    int id;
    String username;
    String email;
    String authStrategy;
    DateTime createdAt;
    String token;

    UserModel({
        required this.id,
        required this.username,
        required this.email,
        required this.authStrategy,
        required this.createdAt,
        required this.token,
    });

    UserModel copyWith({
        int? id,
        String? username,
        String? email,
        String? authStrategy,
        DateTime? createdAt,
        String? token,
    }) => 
        UserModel(
            id: id ?? this.id,
            username: username ?? this.username,
            email: email ?? this.email,
            authStrategy: authStrategy ?? this.authStrategy,
            createdAt: createdAt ?? this.createdAt,
            token: token ?? this.token,
        );

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        authStrategy: json["auth_strategy"],
        createdAt: DateTime.parse(json["created_at"]),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "email": email,
        "auth_strategy": authStrategy,
        "created_at": createdAt.toIso8601String(),
        "token": token,
    };
}
