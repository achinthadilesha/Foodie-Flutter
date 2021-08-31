import 'package:flutter/material.dart';
import 'package:foodie/models/dummy_data.dart';
import 'package:foodie/widgets/meal_item_widget.dart';

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
          return MealItemWidget(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          );
        },
      ),
    );
  }
}
