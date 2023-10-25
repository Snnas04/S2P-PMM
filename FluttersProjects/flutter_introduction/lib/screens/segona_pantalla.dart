import 'package:flutter/material.dart';

class SegonaPantall extends StatelessWidget {
  const SegonaPantall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segona Pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Anar a Primera Pantalla'),
        ),
      ),
    );
  }
}