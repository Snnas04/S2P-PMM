import 'package:flutter/material.dart';
import 'package:practica_t1/screens/HomePage.dart';
import 'package:practica_t1/screens/PersonalPage.dart';
import 'package:practica_t1/screens/WidgetPage.dart';

// Definir un mapa de rutas que asigna rutas a constructores de widgets.
Map<String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder>{
    '/'         : (BuildContext context) => const HomePage(), // La ruta raíz '/' dirige a la clase HomePage.
    'personal': (BuildContext context) => PersonalPage(), // La ruta 'personal' dirige a la clase PersonalPage.
    'widget'    : (BuildContext context) => const WidgetPage(), // La ruta 'widget' dirige a la clase WidgetPage.
  };
}
