import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_app/core/network/api_error_model.dart';
import 'package:laza_app/feature/auth/data/models/login_body_model.dart';
import 'package:laza_app/feature/auth/data/repo/auth_services.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.authRepository}) : super(LoginInitial());

  final AuthRepository authRepository;

  login(LoginBodyModel loginBody) async {
    emit(LoginLoading());
    final result = await authRepository.login(loginBody);
    result.when(onSuccess: (message){
      emit(LoginSuccess());
    }, onError: (error){
      emit(LoginFailure(error));
    });
  }
}
