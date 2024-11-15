import 'package:first_flutter_app/pages/template_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TemplatePage(
      title: 'Home',
      child: SingleChildScrollView(
        child:
          Text("Test")
      ),

    );
  }
}
