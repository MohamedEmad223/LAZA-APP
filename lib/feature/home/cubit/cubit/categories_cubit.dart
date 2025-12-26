import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:laza_app/core/network/api_error_model.dart';
import 'package:laza_app/feature/home/data/model/categories_response_model.dart';
import 'package:laza_app/feature/home/data/repo/categories_repo.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit({required this.categoriesRepo}) : super(CategoriesInitial());
  final CategoriesRepo categoriesRepo;

  void getCategories() async {
    emit(CategoriesLoading());
    final result = await categoriesRepo.getCategreis();
    result.when(
      onSuccess: (categories) {
        emit(CategriesSuccess(categories: categories.categories));
      },
      onError: (error) {
        emit(CategoriesFaliure(error));
      },
    );
  }
}
