import 'package:first_flutter_app/utils/storage.dart';
import 'package:flutter/material.dart';

import '../../models/player.dart';

class PlayerList extends StatefulWidget {
  const PlayerList({super.key});

  @override
  State<PlayerList> createState() => _PlayerListState();
}

class _PlayerListState extends State<PlayerList> {
  final Storage storage = Storage();
  List<Player> players = [];

  @override
  void initState() {
    super.initState();
    storage.init().then((_) => loadPlayers());
  }

  void loadPlayers() async {
    setState(() {
      players = storage.getPlayers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: players.map((player) => ListTile(
        title: Text(player.name),
        subtitle: Text(player.team),
        leading: CircleAvatar(
          child: Text(player.name[0]),
        ),
      )).toList(),
    );
  }
}
