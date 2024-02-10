import 'package:cardapio_client/utils/routes.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  Widget _createItem(
      BuildContext context, IconData icon, String label, Function onTap) {
    return ListTile(
      onTap: () => onTap(),
      splashColor: Theme.of(context).colorScheme.primary,
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              "Let's cook ?",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).colorScheme.primary),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _createItem(
            context,
            Icons.restaurant,
            'Foods',
            () => Navigator.of(context).pushNamed(Routes.home),
          ),
          _createItem(
            context,
            Icons.settings,
            'Settings',
            () => Navigator.of(context).pushNamed(Routes.settings),
          )
        ],
      ),
    );
  }
}
