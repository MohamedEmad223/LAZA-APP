// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupBodyModel _$SignupBodyModelFromJson(Map<String, dynamic> json) =>
    SignupBodyModel(
      email: json['email'] as String,
      password: json['password'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$SignupBodyModelToJson(SignupBodyModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
