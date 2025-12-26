import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/feature/home/data/model/categories_response_model.dart';
import 'package:laza_app/feature/home/presentation/widgets/brand_item.dart';

class BrandListView extends StatelessWidget {
  const BrandListView({super.key, required this.categories});

  final List<Category> categories;

  @override
   Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = categories[index];
          return BrandItem(categories: category); 
        },
      ),
    );
  }
}
