import 'package:practica_t1/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:practica_t1/screens/providers/UserInformation.dart';

void main() {
  // Crear una instancia de UserInfoModel para administrar la información del usuario.
  UserInfoModel userInfoModel = UserInfoModel();

  // Crear un usuario predeterminado con valores ficticios.
  UserInfo defaultUser = UserInfo(
    name: 'Def Username',
    surname: 'Def Surname',
    email: 'defuseremail@email.com',
    phone: '600 144 033',
    birthdate: '01/01/2000',
  );

  // Actualizar el modelo de información del usuario con el usuario predeterminado.
  userInfoModel.updateUserInfo(defaultUser);

  // Ejecutar la aplicación Flutter.
  runApp(
    // Utilizar ChangeNotifierProvider para proporcionar userInfoModel a la aplicación.
    ChangeNotifierProvider(
      create: (context) => userInfoModel,
      child: const MyApp(), // Ejecutar la clase MyApp como la raíz de la aplicación.
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getTheme(), // Utilizar el tema personalizado definido en la función getTheme().
      title: 'Practica T1', // Título de la aplicación.
      initialRoute: '/', // Ruta inicial de la aplicación.
      routes: getRoutes(), // Obtener las rutas definidas en la función getRoutes().
    );
  }
}

// Función que devuelve un tema personalizado para la aplicación.
getTheme() {
  return ThemeData(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Colors.red, // Definir el color primario como rojo.
    ),
    appBarTheme: const AppBarTheme( // Definir el tema de la barra de la aplicación.
      backgroundColor: Colors.red, // Establecer el color de fondo de la barra de la aplicación como rojo.
    ),
  );
}
