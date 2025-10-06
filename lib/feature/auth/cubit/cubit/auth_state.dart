part of 'auth_cubit.dart';


sealed class AuthState {}

final class LoginInitial extends AuthState {}

final class LoginLoading extends AuthState {}

final class LoginSuccess extends AuthState {

}

final class LoginFailure extends AuthState {
  final ApiErrorModel error;

  LoginFailure(this.error);
}
