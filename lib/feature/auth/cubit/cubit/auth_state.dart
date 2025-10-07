part of 'auth_cubit.dart';

sealed class AuthState {}

final class LoginInitial extends AuthState {}

final class LoginLoading extends AuthState {}

final class LoginSuccess extends AuthState {}

final class LoginFailure extends AuthState {
  final ApiErrorModel error;

  LoginFailure(this.error);
}

final class SignUpLoading extends AuthState {}

final class SignUpSuccess extends AuthState {
  final SignupResponseModel signupResponseModel;

  SignUpSuccess(this.signupResponseModel);
}

final class SignUpFailure extends AuthState {
  final ApiErrorModel error;

  SignUpFailure(this.error);
}


