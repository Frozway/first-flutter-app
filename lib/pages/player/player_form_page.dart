import 'package:first_flutter_app/pages/template_page.dart';
import 'package:first_flutter_app/widget/player/player_form.dart';
import 'package:flutter/material.dart';

class PlayerFormPage extends StatelessWidget {
  const PlayerFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplatePage(
        title: "Player Form",
        child: PlayerForm()
    );
  }
}
