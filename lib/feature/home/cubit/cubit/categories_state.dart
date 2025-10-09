part of 'categories_cubit.dart';

sealed class CategoriesState  {}

final class CategoriesInitial extends CategoriesState {}

final class CategoriesLoading extends CategoriesState {}

final class CategoriesFaliure extends CategoriesState{

    final ApiErrorModel errorModel;

  CategoriesFaliure( this.errorModel);
}

final class CategriesSuccess extends CategoriesState{
  final List<Category> categories;

  CategriesSuccess({required this.categories});
}

