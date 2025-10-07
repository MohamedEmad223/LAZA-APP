import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/config/routes/app_routes.dart';
import 'package:laza_app/config/routes/routes.dart';

class LazaApp extends StatelessWidget {
  const LazaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.signUp,
        onGenerateRoute: AppRouter().onGenerateRoute,
      ),
    );
  }
}
