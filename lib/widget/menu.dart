import 'package:first_flutter_app/utils/storage.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 150,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF4090FF),
              ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                )
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Joueurs'),
            onTap: () {
              Navigator.pushNamed(context, '/players');
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text('Ajouter un joueur'),
            onTap: () {
              Navigator.pushNamed(context, '/player');
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete),
            title: const Text('Nettoyer les joueurs'),
            onTap: () {
              Storage.prefs.clear();
            },
          )
        ],
      ),
    );
  }
}
