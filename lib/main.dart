import 'package:cardapio_client/screens/categories_screen.dart';
import 'package:cardapio_client/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Cardápio Digital',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
          background: const Color.fromRGBO(255, 254, 229, 1),
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 21,
                fontFamily: 'RobotoCondensed',
              ),
              titleMedium: const TextStyle(
                fontSize: 18,
                fontFamily: 'RobotoCondensed',
              ),
              titleSmall: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'RobotoCondensed',
                  color: Colors.black),
            ),
        appBarTheme: theme.appBarTheme.copyWith(
          titleTextStyle: const TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
      routes: Routes.initRoutes(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Categories',
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
          ),
        ),
      ),
      body: const CategoriesScreen(),
    );
  }
}
