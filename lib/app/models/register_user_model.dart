import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
//essa classe vai receber as principais funções que o register tem como tela
class RegisterUserModel {
  final String name;
  final String email;
  final String password;
  final String password_confirmation;
  RegisterUserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.password_confirmation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': password_confirmation,
    };
  }

  factory RegisterUserModel.fromMap(Map<String, dynamic> map) {
    return RegisterUserModel(
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      password_confirmation: map['password_confirmation'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterUserModel.fromJson(String source) =>
      RegisterUserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
