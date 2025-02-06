import 'package:flutter/material.dart';
import 'package:mvvm/category_detail/presentation/pages/category_detail_view_model.dart';

class CategoryDetailView extends StatelessWidget {
  const CategoryDetailView({super.key, required this.viewModel});
  final CategoryDetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder:(context, widget)=>
      Scaffold(
        body: GridView.builder(
          itemCount: viewModel.recipes.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2
          ),
          itemBuilder: (context, index)=>
          Image(image: NetworkImage(viewModel.recipes[index].image)),
        ),
      ),
    );
  }
}
