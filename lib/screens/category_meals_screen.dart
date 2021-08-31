import 'package:flutter/material.dart';
import 'package:foodie/models/dummy_data.dart';
import 'package:foodie/models/meal.dart';
import 'package:foodie/widgets/meal_item_widget.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/categorymealscreen';

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String? title;
  String? id;
  List<Meal>? categoryMeals;
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isLoaded == false) {
      final args =
          ModalRoute.of(context)?.settings.arguments as Map<String, String>;

      title = args['title'];
      id = args['id'];

      categoryMeals = meals.where((meal) {
        return meal.categories.contains(id);
      }).toList();
      _isLoaded = true;
    }
  }

  void removeMeal(String mealId) {
    setState(() {
      categoryMeals!.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: ListView.builder(
        itemCount: categoryMeals!.length,
        itemBuilder: (context, index) {
          return MealItemWidget(
            id: categoryMeals![index].id,
            title: categoryMeals![index].title,
            imageUrl: categoryMeals![index].imageUrl,
            duration: categoryMeals![index].duration,
            complexity: categoryMeals![index].complexity,
            affordability: categoryMeals![index].affordability,
            deleteHandler: removeMeal,
          );
        },
      ),
    );
  }
}
