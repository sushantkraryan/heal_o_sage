import 'package:flutter/material.dart';
import '/screens/tabs_screen.dart';

import 'dummy_data.dart';
import 'models/meal.dart';
import 'pages/home_page.dart';
import 'pages/meditation_page.dart';
import 'pages/first_page.dart';
import 'pages/login_page.dart';
import 'pages/mental_wellness_page.dart';
import 'pages/signup_page.dart';
import 'pages/workout_page.dart';
import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/filters_screen.dart';
import 'screens/meal_detail_screen.dart';

void main() {
  runApp(const HealoSage());
}

class HealoSage extends StatefulWidget {
  const HealoSage({super.key});

  @override
  State<HealoSage> createState() => _HealoSageState();
}

class _HealoSageState extends State<HealoSage> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;
  final List<Meal> _favoriteMeals = [];

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableMeals = DUMMY_MEALS.where((meal) {
        if (_filters['gluten']! && !meal.isGlutenFree) {
          return false;
        }
        if (_filters['lactose']! && !meal.isLactoseFree) {
          return false;
        }
        if (_filters['vegan']! && !meal.isVegan) {
          return false;
        }
        if (_filters['vegetarian']! && !meal.isVegetarian) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void _toggleFavorite(String mealId) {
    final existingIndex =
        _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteMeals.add(
          DUMMY_MEALS.firstWhere((meal) => meal.id == mealId),
        );
      });
    }
  }

  bool _isMealFavorite(String id) {
    return _favoriteMeals.any((meal) => meal.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HealoSage',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink),
      ),
      home:  FirstPage(),
      routes: {
        WorkoutPage.routeName: (context) => const WorkoutPage(),
        MeditationPage.routeName: (context) => const MeditationPage(),
        LoginPage.routeName: (context) => const LoginPage(),
        SignUpPage.routeName: (context) => const SignUpPage(),
        HomePage.routeName: (context) => const HomePage(),
        MentalWellnessPage.routeName:(context) => const MentalWellnessPage(),
        TabsScreen.routeName: (ctx) => const TabsScreen(
              favoriteMeals: [],
            ),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (ctx) =>
            MealDetailScreen(_toggleFavorite, _isMealFavorite),
        FiltersScreen.routeName: (ctx) => FiltersScreen(_filters, _setFilters),
        CategoriesScreen.routeName: (context) => const CategoriesScreen(),
      },
    );
  }
}
