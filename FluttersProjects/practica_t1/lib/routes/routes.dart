import 'package:flutter/material.dart';
import 'package:practica_t1/screens/HomePage.dart';
import 'package:practica_t1/screens/PersonalPage.dart';
import 'package:practica_t1/screens/WidgetPage.dart';


Map<String, WidgetBuilder> getRoutes(){
 return <String, WidgetBuilder>{
    '/'         : (BuildContext context) => const HomePage(),
    'personal': (BuildContext context) => PersonalPage(),
    'widget'    : (BuildContext context) => const WidgetPage(),
  };
}
