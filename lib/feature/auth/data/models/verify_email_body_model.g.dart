// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_email_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyEmailBodyModel _$VerifyEmailBodyModelFromJson(
  Map<String, dynamic> json,
) => VerifyEmailBodyModel(
  email: json['email'] as String,
  otp: json['otp'] as String,
);

Map<String, dynamic> _$VerifyEmailBodyModelToJson(
  VerifyEmailBodyModel instance,
) => <String, dynamic>{'email': instance.email, 'otp': instance.otp};
