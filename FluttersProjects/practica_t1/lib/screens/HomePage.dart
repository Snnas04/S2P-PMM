import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:practica_t1/screens/providers/UserInformation.dart';

// Define una clase HomePage que extiende StatelessWidget.
class HomePage extends StatelessWidget {
  const HomePage({Key? key}); // Constructor de la clase HomePage.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SPPMMD'), // Título de la barra de la aplicación.
        centerTitle: true, // Centrar el título en la barra de la aplicación.
      ),
      body: _mainContainer(context), // Llamar a la función _mainContainer para construir el contenido de la página.
    );
  }

  // Función para construir el contenido principal de la página.
  Widget _mainContainer(BuildContext context) {
    var titleStyle = const TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.red,
    );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Home Page', style: titleStyle), // Título de la página.
          const SizedBox(height: 20),

          // Utilizar el widget Consumer para escuchar cambios en userInfoModel.
          Consumer<UserInfoModel>(
            builder: (context, userInfoModel, child) {
              // Obtener la información actualizada del usuario.
              UserInfo userInfo = userInfoModel.userInfo;

              // Mostrar la información del usuario utilizando UserInfoWidget.
              return UserInfoWidget(userInfo: userInfo);
            },
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'personal'), // Navegar a la ruta 'personal'.
                child: const Icon(Icons.person), // Icono de persona en el botón.
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, 'widget'), // Navegar a la ruta 'widget'.
                child: const Icon(Icons.widgets), // Icono de widgets en el botón.
              ),
            ],
          ),
        ],
      ),
    );
  }
}
