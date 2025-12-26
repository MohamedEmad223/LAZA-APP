import 'package:json_annotation/json_annotation.dart';

part 'verify_email_body_model.g.dart';


@JsonSerializable()
class VerifyEmailBodyModel {
  final String email;
  final String otp;

  VerifyEmailBodyModel({required this.email, required this.otp});

    factory VerifyEmailBodyModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailBodyModelFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyEmailBodyModelToJson(this);


}
