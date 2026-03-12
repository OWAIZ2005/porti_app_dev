import 'package:flutter/material.dart';
import 'template_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Porti")),
      body: Center(
        child: ElevatedButton(
          child: Text("Porti"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TemplateScreen()),
            );
          },
        ),
      ),
    );
  }
}
