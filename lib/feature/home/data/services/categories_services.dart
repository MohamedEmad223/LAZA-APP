import 'package:dio/dio.dart';
import 'package:laza_app/core/network/api_constants.dart';
import 'package:laza_app/feature/home/data/model/categories_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'categories_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class CategoriesService {
  factory CategoriesService(Dio dio, {String baseUrl}) = _CategoriesService;

  @GET("categories")
  Future<CategoriesResponseModel> getCategreis();
}
