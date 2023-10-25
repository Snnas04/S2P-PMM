import 'package:flutter/material.dart';
import 'package:flutter_introduction/screens/primera_pantalla.dart';
import 'package:flutter_introduction/screens/segona_pantalla.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First Flutter App',
      routes: {
        'home': (context) => const PrimeraPantall(),
        'segona': (context) => const SegonaPantall(),
      },
      initialRoute: 'home',
    );
  }
}
