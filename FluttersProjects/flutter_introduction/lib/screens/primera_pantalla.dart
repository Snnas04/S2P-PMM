import 'package:flutter/material.dart';

class PrimeraPantall extends StatelessWidget {
  const PrimeraPantall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primera Pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('segona');
          },
          child: const Text('Anar a Segona Pantalla'),
        ),
      ),
    );
  }
}
