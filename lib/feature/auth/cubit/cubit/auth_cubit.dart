import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_app/core/network/api_error_model.dart';
import 'package:laza_app/feature/auth/data/models/login_body_model.dart';
import 'package:laza_app/feature/auth/data/models/login_response_model.dart';
import 'package:laza_app/feature/auth/data/models/signup_body_model.dart';
import 'package:laza_app/feature/auth/data/models/signup_response_model.dart';
import 'package:laza_app/feature/auth/data/models/verify_email_body_model.dart';
import 'package:laza_app/feature/auth/data/repo/login_repo.dart';
import 'package:laza_app/feature/auth/data/repo/signup_repo.dart';
import 'package:laza_app/feature/auth/data/repo/verfiy_email_repo.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.loginRepository, required this.signupRepository, required this.verfiyEmailRepo})
    : super(LoginInitial());

  final LoginRepository loginRepository;
  final SignupRepository signupRepository;
  final VerfiyEmailRepo verfiyEmailRepo;
  login(LoginBodyModel loginBody) async {
    emit(LoginLoading());
    final result = await loginRepository.login(loginBody);
    result.when(
      onSuccess: (message) {
        emit(LoginSuccess(
          loginResponseModel: message
        ));
      },
      onError: (error) {
        emit(LoginFailure(error));
      },
    );
  }

  signUp(SignupBodyModel signUpBody) async {
    emit(SignUpLoading());
    final result = await signupRepository.signUp(signUpBody);
    result.when(
      onSuccess: (message) {
        emit(SignUpSuccess(message));
      },
      onError: (error) {
        emit(SignUpFailure(error));
      },
    );
  }

  verifyEmail(VerifyEmailBodyModel verifyEmailBody) async {
    emit(VerifyEmailLoading());
    final result = await verfiyEmailRepo.verifyEmail(verifyEmailBody);
    result.when(
      onSuccess: (message) {
        emit(VerifyEmailSuccess(message));
      },
      onError: (error) {
        emit(VerifyEmailFailure(error));
      },
    );
  }
}
