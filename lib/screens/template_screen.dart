import 'package:flutter/material.dart';
import 'portfolio_form_screen.dart';

class TemplateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose Template"), centerTitle: true),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,

          children: [
            templateCard(context, "Template 1"),
            templateCard(context, "Template 2"),
            templateCard(context, "Template 3"),
            templateCard(context, "Template 4"),
          ],
        ),
      ),
    );
  }

  templateCard(BuildContext context, String title) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PortfolioFormScreen()),
        );
      },
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.web, size: 50, color: Colors.blue),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text("Portfolio", style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
