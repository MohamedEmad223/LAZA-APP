import 'package:flutter/material.dart';
import 'package:laza_app/config/routes/routes.dart';
import 'package:laza_app/config/routes/routes_transation.dart';
import 'package:laza_app/feature/auth/presentation/login_view.dart';
import 'package:laza_app/feature/home/presentation/homw_view.dart';


class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch (settings.name) {
      case Routes.login:
        return RouterTransitions.build(LoginView());
      case Routes.home:
      return RouterTransitions.buildHorizontal(HomwView());  
      default: return RouterTransitions.build(Scaffold(
        body:Center(
          child: Text("No Route"),
        ),
      ));
    }
  }
}