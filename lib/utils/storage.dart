import 'dart:convert'; // Pour la conversion en JSON
import 'package:shared_preferences/shared_preferences.dart';

import '../models/player.dart';

class Storage {
  static const String _playersKey = 'players_list';
  static late SharedPreferences prefs;

  Future init() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<void> addPlayer(Player player) async {
    List<String> playersJson = prefs.getStringList(_playersKey) ?? [];
    playersJson.add(jsonEncode(player.toJson()));
    await prefs.setStringList(_playersKey, playersJson);
  }

  Future<void> removePlayer(Player player) async {
    List<String> playersJson = prefs.getStringList(_playersKey) ?? [];
    playersJson.removeWhere((jsonString) =>
    Player.fromJson(jsonDecode(jsonString)).name == player.name);
    await prefs.setStringList(_playersKey, playersJson);
  }

  Future<void> clearPlayers() async {
    await prefs.remove(_playersKey);
  }

  List<Player> getPlayers() {
    List<String>? playersJson = prefs.getStringList(_playersKey);
    if (playersJson == null) {
      return [
        Player(name: "DefaultName", team: "DefaultTeam", age: 0)
      ];
    } else {
      return playersJson.map((jsonString) => Player.fromJson(jsonDecode(jsonString))).toList();
    }
  }

}
