import 'package:laza_app/core/network/api_result.dart';
import 'package:laza_app/feature/home/data/model/categories_response_model.dart';
import 'package:laza_app/feature/home/data/services/categories_services.dart';

class CategoriesRepo {
  final CategoriesService categoriesService;

  CategoriesRepo({required this.categoriesService});

  Future<ApiResult<CategoriesResponseModel>> getCategreis() async {
    try {
      final response = await categoriesService.getCategreis();
      return ApiResult.success(response);
    } catch (error) {
     return ApiResult.error(error);
    }
  }
}
