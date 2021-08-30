import 'package:flutter/material.dart';
import 'package:foodie/models/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/categorymealscreen';
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final String? title = args['title'];
    final String? id = args['id'];

    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          return Text(categoryMeals[index].title);
        },
      ),
    );
  }
}
