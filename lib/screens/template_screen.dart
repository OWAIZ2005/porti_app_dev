import 'package:flutter/material.dart';
import 'portfolio_form_screen.dart';

class TemplateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(("Choose Template"))),
      body: Center(
        child: ElevatedButton(
          child: Text("Select Template"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PortfolioFormScreen()),
            );
          },
        ),
      ),
    );
  }
}
