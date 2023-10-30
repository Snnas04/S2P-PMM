import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/services.dart';


class WidgetPage extends StatelessWidget {
  const WidgetPage({Key? key});

  final titelStyle = const TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedTextKit'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _animation(context, titelStyle),
            const SizedBox(height: 50,),
            _rotate(context),
          ],
        ),
      ),
    );
  }
}

_animation(BuildContext context, TextStyle titelStyle) {
  return AnimatedTextKit(
    animatedTexts: [
      WavyAnimatedText(
        'Animated Text',
        textStyle: titelStyle,
      ),
    ],
    isRepeatingAnimation: true,
  );
}

_rotate(BuildContext context) {
  return GestureDetector(
    onTap: () async {
      await Clipboard.setData(const ClipboardData(text: 'Texto que deseas copiar'));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Copiado al portapapeles')),
      );
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Copy this text"),
        const SizedBox(width: 20,),
        ElevatedButton(
          onPressed: () async {
            await Clipboard.setData(const ClipboardData(text: 'Copy this text'));
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Copyed to clipboard')),
            );
          },
          child: const Icon(Icons.copy)
        ),
      ],
    ),
  );
}
