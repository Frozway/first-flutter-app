import 'package:first_flutter_app/utils/storage.dart';
import 'package:first_flutter_app/widget/menu.dart';
import 'package:flutter/material.dart';

class TemplatePage extends StatelessWidget {
  final String title;
  final Widget child;

  const TemplatePage({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4090FF),
        title: Text(title),
      ),
      drawer: const MenuDrawer(),
      body: Center(
        child: child,
      ),
    );
  }
}
