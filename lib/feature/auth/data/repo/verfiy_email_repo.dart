import 'package:laza_app/core/network/api_result.dart';
import 'package:laza_app/feature/auth/data/models/verify_email_body_model.dart'
    show VerifyEmailBodyModel;
import 'package:laza_app/feature/auth/data/services/verfiy_email.dart';

class VerfiyEmailRepo {
  final VerfiyEmailServices verfiyEmailServices;

  VerfiyEmailRepo({required this.verfiyEmailServices});

  Future<ApiResult<String>> verifyEmail(VerifyEmailBodyModel body) async {
    try {
      final response = await verfiyEmailServices.verifyEmail(
        verifyEmailBodyModel: body,
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.error(error);
    }
  }
}
