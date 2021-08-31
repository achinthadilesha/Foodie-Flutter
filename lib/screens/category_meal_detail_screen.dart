import 'package:flutter/material.dart';
import 'package:foodie/models/dummy_data.dart';

class CategoryMealDetailScreen extends StatelessWidget {
  static const routeName = '/categorymealdetailscreen';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final meal = meals.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          child: Text('${meal.title}'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Text('Ingredients',
                  style: Theme.of(context).textTheme.headline6),
            ),
          ],
        ),
      ),
    );
  }
}
