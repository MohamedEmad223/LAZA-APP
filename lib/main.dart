import 'package:flutter/material.dart';
import 'package:laza_app/config/cache/cache_helper.dart';
import 'package:laza_app/core/di/di.dart';
import 'package:laza_app/laza_app.dart';

void main() {
  initDependency();
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper.init();
  runApp(const LazaApp());
}



