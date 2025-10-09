import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/feature/home/data/model/products_response_model.dart';
import 'package:laza_app/feature/home/presentation/widgets/product_item.dart';

class ProductGridViewWidget extends StatelessWidget {
  const ProductGridViewWidget({super.key, required this.products});

  final List<ProductsResponseModel> products;

  @override
  Widget build(BuildContext context) {
        final allProducts = products.expand((e) => e.products).toList();

    return SizedBox(
      height: 400.h,
      child: GridView.builder(
        itemCount: allProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 275,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemBuilder: (context, index) {
          final product = allProducts[index];
          return ProductItem(
            product: product,
            
          );
        },
      ),
    );
  }
}
