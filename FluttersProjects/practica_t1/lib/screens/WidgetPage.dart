import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/services.dart';

// Define una clase WidgetPage que extiende StatelessWidget.
class WidgetPage extends StatelessWidget {
  const WidgetPage({Key? key});

  final titelStyle = const TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );

  // Define la variable de texto
  final String textToCopy = 'New User'; // Define el texto a copiar aquí

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedTextKit'), // Título de la barra de la aplicación.
        centerTitle: true, // Centrar el título en la barra de la aplicación.
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _animation(context, titelStyle), // Llamar a la función _animation para mostrar el texto animado.
            const SizedBox(height: 50,),
            _copyText(context, textToCopy), // Llamar a la función _copyText para mostrar el texto y el botón de copia.
          ],
        ),
      ),
    );
  }
}

// Función para mostrar el texto animado.
_animation(BuildContext context, TextStyle titelStyle) {
  return AnimatedTextKit(
    animatedTexts: [
      WavyAnimatedText(
        'Animated Text', // Texto animado.
        textStyle: titelStyle, // Estilo de texto definido previamente.
      ),
    ],
    isRepeatingAnimation: true, // Repetir la animación continuamente.
  );
}

// Función para mostrar el texto y el botón de copia.
_copyText(BuildContext context, String textToCopy, ) {
  return GestureDetector(
    onTap: () async {
      await Clipboard.setData(ClipboardData(text: textToCopy)); // Copiar el texto al portapapeles.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Copiado al portapapeles')), // Mostrar un mensaje de Snackbar.
      );
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textToCopy), // Mostrar el texto definido en la variable.
        const SizedBox(width: 20,),
        ElevatedButton(
          onPressed: () async {
            await Clipboard.setData(ClipboardData(text: textToCopy)); // Copiar el texto al portapapeles.
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Copiado al portapapeles')), // Mostrar un mensaje de Snackbar.
            );
          },
          child: const Icon(Icons.copy),
        ),
      ],
    ),
  );
}
