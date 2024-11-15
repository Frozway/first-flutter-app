import 'package:first_flutter_app/pages/template_page.dart';
import 'package:first_flutter_app/widget/player/player_list.dart';
import 'package:flutter/material.dart';

class PlayerListPage extends StatelessWidget {
  const PlayerListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplatePage(
        title: "Players",
        child: PlayerList()
    );
  }
}
