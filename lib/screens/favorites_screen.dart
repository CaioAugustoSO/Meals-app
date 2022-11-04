import 'package:flutter/material.dart';
import 'package:menu/components/meal_item.dart';
import 'package:menu/models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen(this.favoriteMeals);
  final List<Meal> favoriteMeals;
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma favorita'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
        },
      );
    }
  }
}
