import 'package:json_annotation/json_annotation.dart';

part 'signup_body_model.g.dart';

@JsonSerializable()
class SignupBodyModel {
  final String email;
  final String password;
  final String firstName;
  final String lastName;

  SignupBodyModel({required this.email, required this.password, required this.firstName, required this.lastName});

    factory SignupBodyModel.fromJson(Map<String, dynamic> json) =>
      _$SignupBodyModelFromJson(json);

  Map<String,dynamic> toJson()=>_$SignupBodyModelToJson(this);
}