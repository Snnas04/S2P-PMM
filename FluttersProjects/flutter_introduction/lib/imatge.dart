import 'package:flutter/material.dart';

void main() {
  runApp(
    NewWidget(),
  );
}

class NewWidget extends StatelessWidget {
  TextStyle textStyle = const TextStyle(fontSize: 40);

  NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Flutters',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Example Flutterdasd'),
          ),
          body: Center(
            child: Container(
              color: Colors.amber,
              child: Image.asset(
                'assets/archIcon.png'
                ),
              ),
            )
      )
    );
  }
}