import 'package:flutter/material.dart';

import '../models/category.dart';

import '../utils/app-routes.dart';

import '../screens/categores_meals_screen.dart';
class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final Category category;
  void _selectCategory(BuildContext context){

  Navigator.of(context).pushNamed(
    AppRoutes.CATEGORIES_MEALS,
    arguments: category,
  );
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selectCategory(context);
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child:Text(
          category.title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
          category.color.withOpacity(0.5),
          category.color,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        ),
      ),
      ),
    );
  }
}