import 'package:flutter/material.dart';

class CategoriesDetailModel {

  final int id;
  final int categoryId;
  final String title, desc, image;
  final int time;

  CategoriesDetailModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.desc,
    required this.image,
    required this.time
});

  factory CategoriesDetailModel.fromJson(Map<String, dynamic> json){
    return CategoriesDetailModel(id: json['id'],
        categoryId: json['categoryId'],
        title: json['title'],
        desc: json['description'],
        image: json['photo'],
        time: json['timeRequired']);
  }

}