import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          BrandItem(image: 'assets/images/Adidas.png', name: 'Adidas'),
          BrandItem(image: 'assets/images/Vector.png', name: 'Nike'),
          BrandItem(image: 'assets/images/fila-9 1.png', name: 'Fila'),
          BrandItem(image: 'assets/images/Vector (1).png', name: 'Puma'),
        ],
      ),
    );
  }
}
