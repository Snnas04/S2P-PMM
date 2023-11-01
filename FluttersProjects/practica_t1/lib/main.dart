import 'package:practica_t1/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getTheme(),
      title: 'Components',
      // home: HomePage(),
      initialRoute: '/',
      routes: getRoutes(),
    );
  }
}


getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.dark().copyWith(
        primary: Colors.blue,
        secondary: Colors.blue,
      ),
    );
  }