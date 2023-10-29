import 'package:exercici_2/screens/providers/menu_providers.dart';
import 'package:exercici_2/utils/icono_string_utils.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _llista(),
    );
  }
}

Widget _llista() {
  return FutureBuilder(
    future: menuProvider.CarregarDades(),
    initialData: const [], // Aquest seria el valor per defecte que s'envia a snapshot.data
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
      print('builder');
      print(snapshot.data);
      return ListView(
        children: _llistaElements(snapshot.data, context), // Pass both data and context arguments to _llistaElements function
      );
    },
  );
}

List<Widget> _llistaElements(List<dynamic>? data, BuildContext context) {
  final List<Widget> elements =[];

  data?.forEach((element) {
    final widgetTemp = ListTile(
      title: Text(element['texte']),
      leading: getIcon(element['icona']),
      trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.blue),
      onTap: (){
        // final route = MaterialPageRoute(builder: (context) => AlertPage());
        // Navigator.push(context, route);

        Navigator.pushNamed(context, element['ruta']);
      },
    );

    elements..add(widgetTemp)
      ..add(Divider());
  });

  return  elements;
}

