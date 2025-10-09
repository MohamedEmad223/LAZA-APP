
import 'package:dio/dio.dart';
import 'package:laza_app/core/network/api_constants.dart';
import 'package:laza_app/feature/home/data/model/products_body_model.dart';
import 'package:laza_app/feature/home/data/model/products_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'products_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ProductsService {
  factory ProductsService(Dio dio, {String baseUrl}) = _ProductsService;

  @GET("products")
  Future<ProductsResponseModel> getProducts({
    @Body() required ProductsBodyModel body,
  });
}
