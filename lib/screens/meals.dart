import 'package:flutter/material.dart';

import 'package:meals_app/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
        itemBuilder: (context, index) => Text(
          meals[index].title,
        ),
      );

    if (meals.isEmpty) {
      content = const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Uh oh... nothing here!'),
            SizedBox(height: 16,),
            Text('Try selecting a different category!'),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // body: ListView.builder(
      //   itemBuilder: (context, index) => Text(
      //     meals[index].title,
      //   ),
      // ),
    );
  }
}
