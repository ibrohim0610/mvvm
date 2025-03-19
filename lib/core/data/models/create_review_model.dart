import 'dart:io';

import 'package:dio/dio.dart';

class CreateReviewModel {
  final int recipeId;
  final String comment;
  final int rating;
  final bool recommend;
  final File? photo;

  CreateReviewModel({
    required this.recipeId,
    required this.comment,
    required this.recommend,
    required this.rating,
    this.photo,
  });

  Future<Map<String, dynamic>> toJson() async {
    return {
      "recipeId": recipeId,
      "comment": comment,
      "rating": rating,
      "recommend": recommend,
      "image": photo != null ? await MultipartFile.fromFile(photo!.path, filename: photo!.path.split('/').last) : null,
    };
  }
}