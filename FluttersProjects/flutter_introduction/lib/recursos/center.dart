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
          body: const Center(
            child: Text(
              'Text',
              style: TextStyle(
                fontSize: 200,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.red,
                decoration: TextDecoration.underline,
                decorationColor: Colors.blue,
                decorationThickness: 2,
                decorationStyle: TextDecorationStyle.wavy,
                backgroundColor: Colors.yellowAccent,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(7, 7),
                    blurRadius: 6,
                  ),
                ]
              ),
            )
            )
          ),
    );
  }
}