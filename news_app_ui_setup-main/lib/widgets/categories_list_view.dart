import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_card.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> Categories = const [
    CategoryModel(image: 'assets/business.jpeg', categoryName: "Business"),
    CategoryModel(
        image: 'assets/entertaiment.jpeg', categoryName: "Entertainment"),
    CategoryModel(image: 'assets/health.jpeg', categoryName: "Health"),
    CategoryModel(image: 'assets/science.jpeg', categoryName: "Science"),
    CategoryModel(image: 'assets/sports.jpeg', categoryName: "Sports"),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: "Technology"),
    CategoryModel(image: 'assets/news.jpeg', categoryName: "General"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: Categories[index],
          );
        },
      ),
    );
  }
}
