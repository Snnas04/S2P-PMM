import 'package:practica_t1/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:practica_t1/screens/providers/UserInformation.dart';

void main() {
  UserInfoModel userInfoModel = UserInfoModel();
  UserInfo defaultUser = UserInfo(
    name: 'Default Name',
    surname: 'Default Surname',
    email: 'default@email.com',
    phone: '1234567890',
    birthdate: '01/01/2000',
  );

  userInfoModel.updateUserInfo(defaultUser);

  runApp(
    ChangeNotifierProvider(
      create: (context) => userInfoModel,
      child: const MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getTheme(),
      title: 'Components',
      // home: HomePage(),
      initialRoute: '/',
      routes: getRoutes(),
    );
  }
}


getTheme() {
  return ThemeData(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Colors.red,
    ),
    appBarTheme: const AppBarTheme( // Define the appBarTheme named parameter
      backgroundColor: Colors.red,
    ),
  );
}