import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/common/ui/buttom_nav_bar.dart';
import 'package:laza_app/core/di/di.dart';
import 'package:laza_app/feature/home/cubit/cubit/home_cubit.dart';
import 'package:laza_app/feature/home/data/model/products_body_model.dart';
import 'package:laza_app/feature/home/data/model/products_response_model.dart';
import 'package:laza_app/feature/home/presentation/widgets/bloc_builder_widget.dart';
import 'package:laza_app/feature/home/presentation/widgets/hello_widget.dart';
import 'package:laza_app/feature/home/presentation/widgets/home_app_bar.dart';
import 'package:laza_app/feature/home/presentation/widgets/lable_row_widget.dart';
import 'package:laza_app/feature/home/presentation/widgets/product_grid_view_widget.dart';
import 'package:laza_app/feature/home/presentation/widgets/search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(productsRepo: getIt())..getProducts(body: ProductsBodyModel(page: 1, pageSize: 10)),
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: ButtomNavBar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h),
                  HomeAppBar(),
                  SizedBox(height: 20.h),
                  HelloWidget(),
                  SizedBox(height: 16.h),
                  const SearchField(),
                  SizedBox(height: 24.h),
                  LableRowWidget(),
                  SizedBox(height: 12.h),
                  // BrandListView(),
                  SizedBox(height: 24.h),
                  LableRowWidget(),
                  SizedBox(height: 12.h),
                  BlocBuilderWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
