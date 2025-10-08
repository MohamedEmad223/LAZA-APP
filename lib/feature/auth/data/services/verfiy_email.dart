import 'package:dio/dio.dart';
import 'package:laza_app/core/network/api_constants.dart';
import 'package:laza_app/feature/auth/data/models/verify_email_body_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'verfiy_email.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class VerfiyEmailServices {
  factory VerfiyEmailServices(Dio dio) = _VerfiyEmailServices;

  @POST('auth/verify-email')
  Future<dynamic> verifyEmail({
    @Body() required VerifyEmailBodyModel verifyEmailBodyModel,
  });
}
