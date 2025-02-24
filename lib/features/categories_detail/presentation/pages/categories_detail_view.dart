import 'package:flutter/material.dart';
import 'package:recipe_app/features/categories_detail/presentation/manager/categories_detail_view_model.dart';
import 'package:recipe_app/features/categories_detail/presentation/pages/categories_detail_app_bar.dart';

class CategoriesDetailView extends StatelessWidget {
  const CategoriesDetailView({super.key, required this.viewModel});

  final CategoriesDetailViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) => Scaffold(
              appBar: CategoriesDetailAppBar(),
            ));
  }
}
