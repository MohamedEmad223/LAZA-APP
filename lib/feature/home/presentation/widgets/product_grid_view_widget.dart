import 'package:flutter/material.dart';
import 'package:laza_app/core/utils/app_images.dart';
import 'package:laza_app/feature/home/presentation/widgets/product_item.dart';

class ProductGridViewWidget extends StatelessWidget {
  const ProductGridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 275,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return const ProductItem(
          image: AppImages.person,
          title: 'Nike Sportswear Club Fleece',
          price: 99,
        );
      },
    );
  }
}
