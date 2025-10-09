import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_app/core/network/api_error_model.dart';
import 'package:laza_app/feature/home/data/model/products_body_model.dart';
import 'package:laza_app/feature/home/data/model/products_response_model.dart';
import 'package:laza_app/feature/home/data/repo/products_repo.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.productsRepo}) : super(ProductsInitial());

  ProductsRepo productsRepo;

  void getProducts({required ProductsBodyModel body}) async {
    emit(ProductsLoading());
    final result = await productsRepo.getProducts(body);
    result.when(
      onSuccess: (products) {
        emit(ProductsSuccess([products]));
      },
      onError: (error) {
        emit(ProductsFailure(error));
      },
    );
  }

}
