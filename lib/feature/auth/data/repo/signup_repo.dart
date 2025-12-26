
import 'package:laza_app/core/network/api_result.dart';

import 'package:laza_app/feature/auth/data/models/signup_body_model.dart';
import 'package:laza_app/feature/auth/data/models/signup_response_model.dart';
import 'package:laza_app/feature/auth/data/services/signup_services.dart';

class SignupRepository {
  final SignupServices signupServices;

  SignupRepository({required this.signupServices});

  Future<ApiResult<SignupResponseModel >> signUp(SignupBodyModel body) async {
    try {
      final  response = await signupServices.signUp(signUpBodyModel: body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.error(error);
    }
  }
}
