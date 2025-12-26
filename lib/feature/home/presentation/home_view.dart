import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/common/ui/buttom_nav_bar.dart';
import 'package:laza_app/core/di/di.dart';
import 'package:laza_app/feature/home/cubit/cubit/categories_cubit.dart';
import 'package:laza_app/feature/home/cubit/cubit/home_cubit.dart';
import 'package:laza_app/feature/home/data/model/products_body_model.dart';
import 'package:laza_app/feature/home/presentation/widgets/bloc_builder_widget.dart';
import 'package:laza_app/feature/home/presentation/widgets/brand_list_view.dart';
import 'package:laza_app/feature/home/presentation/widgets/hello_widget.dart';
import 'package:laza_app/feature/home/presentation/widgets/home_app_bar.dart';
import 'package:laza_app/feature/home/presentation/widgets/lable_row_widget.dart';
import 'package:laza_app/feature/home/presentation/widgets/search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                LableRowWidget(lable: 'Choose Category'),
                SizedBox(height: 12.h),
                BlocBuilder<CategoriesCubit, CategoriesState>(
                  builder: (context, state) {
                    if (state is CategoriesLoading) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (state is CategoriesFaliure) {
                      return Center(
                        child: Text(state.errorModel.errors.first),
                      );
                    }
                    if (state is CategriesSuccess) {
                      return BrandListView(
                        categories: state.categories,
                      );
                    }
                    return SizedBox.shrink();
                  },
                ),
                SizedBox(height: 24.h),
                LableRowWidget(lable: 'Choose Brand'),
                SizedBox(height: 12.h),
                BlocBuilderWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
