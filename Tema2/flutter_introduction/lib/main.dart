import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Exemple Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemple Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    ));
}
