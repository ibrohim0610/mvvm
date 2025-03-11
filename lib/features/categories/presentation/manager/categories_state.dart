part of 'categories_cubit.dart';
enum CategoriesStatus{idle,loading, error}
class CategoriesState{
  CategoriesState({
    required this.categories,
    required this.mainCategory,
    required this.status,
  });
  List<CategoryModel> categories = [];
  CategoryModel? mainCategory;
  final CategoriesStatus status;
}