import 'package:cardapio_client/components/app_drawer.dart';
import 'package:cardapio_client/screens/categories_screen.dart';
import 'package:cardapio_client/screens/favorite_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreen = 0;

  final List<Map<String, Object>> _screens = [
    {
      "title": "Categories",
      "screen": const CategoriesScreen(),
      "icon": const Icon(Icons.category)
    },
    {
      "title": "Favorites",
      "screen": const FavoriteScreen(),
      "icon": const Icon(Icons.star)
    },
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screens[_selectedScreen]['title'] as String,
        ),
        centerTitle: true,
      ),
      body: _screens[_selectedScreen]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => _selectScreen(index),
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedScreen,
        type: BottomNavigationBarType.shifting,
        items: _screens.map((e) {
          return BottomNavigationBarItem(
            backgroundColor: Theme.of(context).colorScheme.primary,
            label: e['title'] as String,
            icon: e['icon'] as Icon,
          );
        }).toList(),
      ),
      drawer: const AppDrawer(),
    );
  }
}
