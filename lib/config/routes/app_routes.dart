import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_app/config/routes/routes.dart';
import 'package:laza_app/config/routes/routes_transation.dart';
import 'package:laza_app/core/di/di.dart';
import 'package:laza_app/feature/auth/presentation/view/login_view.dart';
import 'package:laza_app/feature/auth/presentation/view/signup_screen.dart';
import 'package:laza_app/feature/auth/presentation/view/very_email_view.dart';
import 'package:laza_app/feature/home/cubit/cubit/categories_cubit.dart';
import 'package:laza_app/feature/home/cubit/cubit/home_cubit.dart';
import 'package:laza_app/feature/home/data/model/products_body_model.dart';
import 'package:laza_app/feature/home/presentation/home_view.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return RouterTransitions.build(LoginView());
      case Routes.signUp:
        return RouterTransitions.build(SignupView());
      case Routes.verfyEmail:
        return RouterTransitions.build(VeryEmailView());
      case Routes.home:
        return RouterTransitions.buildHorizontal(MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => HomeCubit(productsRepo: getIt())..getProducts(body: ProductsBodyModel(page: 1, pageSize: 10)),),
            BlocProvider(create: (context) => CategoriesCubit(categoriesRepo: getIt())..getCategories(),),
          ],
          child: HomeView()));
      default:
        return RouterTransitions.build(
          Scaffold(body: Center(child: Text("No Route"))),
        );
    }
  }
}
