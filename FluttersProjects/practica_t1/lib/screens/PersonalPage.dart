import 'dart:ui';

import 'package:flutter/material.dart';

class PresonalPage extends StatelessWidget {
  const PresonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sans'),
        centerTitle: true,
      ),
      body: _userInfo(context),
    );
  }
}

_userInfo(BuildContext context) {
  var titelStyle = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );

  return Container(
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Personal Page', style: titelStyle),

            const SizedBox(height: 20,),

            _userForm(context),
          ],
        ),
      )
    ),
  );
}

_userForm(BuildContext context) {
  return Column(
    children: [
      const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
            ),
          ),

          const SizedBox(height: 20,),

          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Surname',
            ),
          ),

          const SizedBox(height: 20,),

          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),

          const SizedBox(height: 20,),

          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Phone',
            ),
          ),

          const SizedBox(height: 20,),

          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Birthdate',
            ),
          ),

          const SizedBox(height: 20,),

          _buttons(context),
    ],
  );
}

_buttons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,

    children: [
      ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),

      const SizedBox(width: 20,),

      ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.save),
      ),
  ]);
}

