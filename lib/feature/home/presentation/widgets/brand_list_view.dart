import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/utils/app_images.dart';
import 'package:laza_app/feature/home/presentation/widgets/brand_item.dart';

class BrandListView extends StatelessWidget {
  const BrandListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          BrandItem(image: AppImages.adidas, name: 'Adidas'),
          BrandItem(image: AppImages.nike, name: 'Nike'),
          BrandItem(image: AppImages.fila, name: 'Fila'),
          BrandItem(image: AppImages.puma, name: 'Puma'),
        ],
      ),
    );
  }
}
