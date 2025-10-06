import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:laza_app/core/network/dio_factory.dart';
import 'package:laza_app/feature/auth/data/repo/auth_services.dart';
import 'package:laza_app/feature/auth/data/services/auth_services.dart';


final getIt = GetIt.instance;

initDependency(){
  _setupAuth();
}

_setupAuth(){
  getIt.registerSingleton<Dio>(DioFactory() .dio);
  getIt.registerSingleton<AuthServices>(AuthServices(getIt()));
  getIt.registerSingleton<AuthRepository>(AuthRepository(authServices: getIt()));
}
