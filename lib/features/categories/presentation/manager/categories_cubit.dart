import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/categories_model.dart';
import '../../data/repositories/categories_repository.dart';
part 'categories_state.dart';
class CategoriesCubit extends Cubit<CategoriesState>{
  CategoriesCubit({required CategoriesRepository repo}): _repo = repo,
  super(
        CategoriesState(categories: [], mainCategory: null, status: CategoriesStatus.loading)
      ){
    load();
}

  final CategoriesRepository _repo;

  Future<void> load()async{
    var rawCategories = await _repo.fetchCategories();
    emit(CategoriesState(
        categories: rawCategories.where((data)=> !data.main).toList(),
    mainCategory:  rawCategories.firstWhere((data) => data.main),
    status: CategoriesStatus.idle,
    )
    );

  }
}
