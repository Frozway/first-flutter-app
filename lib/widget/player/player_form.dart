import 'package:first_flutter_app/utils/storage.dart';
import 'package:flutter/material.dart';

import '../../models/player.dart';

class PlayerForm extends StatefulWidget {
  const PlayerForm({super.key});

  @override
  State<PlayerForm> createState() => _PlayerFormState();
}

class _PlayerFormState extends State<PlayerForm> {
  final Storage storage = Storage();

  TextEditingController nameController = TextEditingController();
  TextEditingController teamController = TextEditingController();
  String name = "";
  String team = "";


  @override
  void initState() {
    super.initState();
    storage.init();
  }

  @override
  void dispose() {
    nameController.dispose();
    teamController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            TextField(
              controller: teamController,
              decoration: const InputDecoration(
                labelText: 'Team',
              ),
              onChanged: (value) {
                setState(() {
                  team = value;
                });
              },
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                storage.addPlayer(Player(name: name, team: team, age: 0));
                nameController.clear();
                teamController.clear();
              },
              child: const Text('Add player'),
            ),
          ],
        ),
      ),
    );
  }
}
