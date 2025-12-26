import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:laza_app/core/network/dio_factory.dart';
import 'package:laza_app/feature/auth/data/repo/login_repo.dart';
import 'package:laza_app/feature/auth/data/repo/signup_repo.dart';
import 'package:laza_app/feature/auth/data/repo/verfiy_email_repo.dart';
import 'package:laza_app/feature/auth/data/services/login_services.dart';
import 'package:laza_app/feature/auth/data/services/signup_services.dart';
import 'package:laza_app/feature/auth/data/services/verfiy_email.dart';
import 'package:laza_app/feature/home/data/repo/categories_repo.dart';
import 'package:laza_app/feature/home/data/repo/products_repo.dart';
import 'package:laza_app/feature/home/data/services/categories_services.dart';
import 'package:laza_app/feature/home/data/services/products_services.dart';

final getIt = GetIt.instance;

initDependency() {
  _setupDependencies();
}

_setupDependencies() {
  /// Login
  getIt.registerSingleton<Dio>(DioFactory().dio);
  getIt.registerSingleton<LoginServices>(LoginServices(getIt()));
  getIt.registerSingleton<LoginRepository>(
    LoginRepository(loginServices: getIt()),
  );

  /// sign Up

  getIt.registerSingleton<SignupServices>(SignupServices(getIt()));
  getIt.registerSingleton<SignupRepository>(
    SignupRepository(signupServices: getIt()),
  );

  /// verfiy Email
  getIt.registerSingleton<VerfiyEmailServices>(VerfiyEmailServices(getIt()));
  getIt.registerSingleton<VerfiyEmailRepo>(
    VerfiyEmailRepo(verfiyEmailServices: getIt()),
  );

  /// products
  getIt.registerSingleton<ProductsService>(ProductsService(getIt()));
  getIt.registerSingleton<ProductsRepo>(ProductsRepo(productsService: getIt()));

  /// categories
  getIt.registerSingleton<CategoriesService>(CategoriesService(getIt()));
   getIt.registerSingleton<CategoriesRepo>(CategoriesRepo(categoriesService:  getIt()));
}
