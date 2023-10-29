import 'package:flutter/material.dart';

class WidgetPage extends StatelessWidget {
  const WidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget name'),
        centerTitle: true,
      ),
      body: Text('Widget Page'),
      backgroundColor: Color(0xFF1C1C35), // Use a Color object
    );
  }
}

