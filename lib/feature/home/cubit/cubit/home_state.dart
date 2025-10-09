part of 'home_cubit.dart';

sealed class HomeState {}

final class ProductsInitial extends HomeState {}

final class ProductsLoading extends HomeState {}

final class ProductsSuccess extends HomeState {
  final List<ProductsResponseModel> products;

  ProductsSuccess(this.products);
}

final class ProductsFailure extends HomeState {
  final ApiErrorModel error;

  ProductsFailure(this.error);
}


