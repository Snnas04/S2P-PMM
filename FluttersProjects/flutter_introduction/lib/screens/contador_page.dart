import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final estil = const TextStyle(fontSize: 24);
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contador'),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nombre de clics', style: estil),
              Text('$contador', style: estil,)
              ],
          )
        ),

        floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      children: [
        const SizedBox(width: 35),
        FloatingActionButton(
          onPressed: _zero,
          child: const Icon(Icons.exposure_zero),
        ),
        const Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: _restar,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(width: 5),
        FloatingActionButton(
          onPressed: _suma,
          child: const Icon(Icons.add),
        ),
        const SizedBox(width: 5)
      ],
    );
  }

  _suma() {
    setState(() {
      contador++;
    });
  }

  _restar() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
    });
  }

  _zero() {
    setState(() {
      contador = 0;
    });
  }
}