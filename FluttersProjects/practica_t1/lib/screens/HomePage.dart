import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SPPMMD'),
        centerTitle: true,
      ),
      body: _mainContainer(context), // Pass the BuildContext to _mainContainer
      backgroundColor: Color(0xFF1C1C35), // Use a Color object
    );
  }
}

_mainContainer(BuildContext context) {
  var titelStyle = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );

  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Home Page', style: titelStyle),

          const SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'personal'),
              child: const Icon(Icons.person),
            ),
          
            const SizedBox(width: 20,),
            
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, 'widget'),
              child: const Icon(Icons.widgets),
            ),
          ])
        ],
      ),
    ),
  );
}
