import 'package:flutter/material.dart';
import 'package:foodie/models/meal.dart';
import 'package:foodie/screens/category_meal_detail_screen.dart';

class MealItemWidget extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItemWidget({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.complexity,
    required this.affordability,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        {
          return 'Simple';
        }
      case Complexity.Hard:
        {
          return 'Hard';
        }
      case Complexity.Challenging:
        {
          return 'Challenging';
        }
      default:
        return '';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        {
          return 'Affordable';
        }
      case Affordability.Luxurious:
        {
          return 'Luxurious';
        }
      case Affordability.Pricey:
        {
          return 'Pricey';
        }
      default:
        return '';
    }
  }

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(CategoryMealDetailScreen.routeName, arguments: id);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black87,
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.work),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$complexityText'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$affordabilityText'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
