
import 'package:exercici_2/screens/alert_page.dart';
import 'package:exercici_2/screens/avatar_page.dart';
import 'package:exercici_2/screens/card_page.dart';
import 'package:exercici_2/screens/home_page.dart';
import 'package:flutter/material.dart';


Map<String, WidgetBuilder> getRoutes(){
 return <String, WidgetBuilder>{
       '/'         : (BuildContext context) => HomePage(),
       'alert'     : (BuildContext context) => AlertPage(),
       'avatar'    : (BuildContext context) => AvatarPage(),
       'card'      : (BuildContext context) => CardPage(),
     };
}