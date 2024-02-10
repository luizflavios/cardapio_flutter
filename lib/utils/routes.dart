import 'package:cardapio_client/screens/favorite_screen.dart';
import 'package:cardapio_client/screens/meals_detail_screen.dart';
import 'package:cardapio_client/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

import '../screens/categories_meals_screen.dart';
import '../screens/settings_screen.dart';

class Routes {
  static const String home = "/";
  static const String categoriesMeals = "/categories-meals";
  static const String mealsDetails = "/meals-details";
  static const String favorites = "/favorites";
  static const String settings = "/settings";

  static Map<String, WidgetBuilder> initRoutes() {
    return {
      home: (_) => const TabsScreen(),
      categoriesMeals: (_) => const CategoriesMealsScreen(),
      mealsDetails: (_) => const MealsDetailScreen(),
      favorites: (_) => const FavoriteScreen(),
      settings: (_) => const SettingsScreen(),
    };
  }
}
