import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Flutter App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final estil = const TextStyle(fontSize: 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contador'),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nombre de clics', style: estil),
              Text('0', style: estil,)
              ],
          )
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: boto_polsat,
          child: const Icon(Icons.add),
        ),
    );
  }
}

void boto_polsat() {
  print("S'ha pitjat el boto");
}
