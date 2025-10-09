import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_app/feature/home/cubit/cubit/home_cubit.dart';
import 'package:laza_app/feature/home/presentation/widgets/product_grid_view_widget.dart';

class BlocBuilderWidget extends StatelessWidget {
  const BlocBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is ProductsLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is ProductsFailure) {
          return Center(
            child: Text(state.error.message ?? 'There was an error'),
          );
        }
        if (state is ProductsSuccess) {
          return ProductGridViewWidget(products: state.products);
        }
        return const SizedBox.shrink();
      },
    );
  }
}
