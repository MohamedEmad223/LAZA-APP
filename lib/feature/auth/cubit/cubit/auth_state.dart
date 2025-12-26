part of 'auth_cubit.dart';

sealed class AuthState {}

final class LoginInitial extends AuthState {}

final class LoginLoading extends AuthState {}

final class LoginSuccess extends AuthState {
  final LoginResponseModel loginResponseModel;

  LoginSuccess({required this.loginResponseModel});
}

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

final class VerifyEmailLoading extends AuthState {}

final class VerifyEmailSuccess extends AuthState {
  final String message;

  VerifyEmailSuccess(this.message);
}

final class VerifyEmailFailure extends AuthState {
  final ApiErrorModel error;

  VerifyEmailFailure(this.error);
}
