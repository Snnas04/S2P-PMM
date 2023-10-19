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
          body: Container(
            color: Colors.white,
            child: Center(
              child: Row(
                children: [
                  Text(
                    "Text1",
                    style: textStyle,
                  ),
                  Text(
                    "Text2",
                    style: textStyle,
                  ),
                  Text(
                    "Text3",
                    style: textStyle.copyWith(fontSize: 50),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              ),
            ),
          )),
    );
  }
}