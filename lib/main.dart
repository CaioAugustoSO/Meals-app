import 'package:flutter/material.dart';
import './screens/categories_screen.dart';
import './screens/categores_meals_screen.dart';
import './utils/app-routes.dart';
import './screens/meal_details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        accentColor: Colors.pink,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
                titleSmall: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
            )),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => Categories(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAILS: (ctx) => MealDetailScreen()
      },
      onGenerateRoute: (settings) {},
    );
  }
}
