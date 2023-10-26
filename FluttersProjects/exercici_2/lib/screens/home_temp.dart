import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget {

  final elements =['Element 1','Element 2','Element 3','Element 4'];

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Components Temp'),
     ),
     body: ListView(
      children: _crearElementsCurt(),
     )
   );
 }

  List<Widget> _crearElements(){
    //Aquesta declaració és la nova degut al null safety
    List<Widget> llista = [];
      for (String element in elements){
        final tempWidget = ListTile(
          title: Text(element)
        );
        llista.add(tempWidget);
        llista.add(Divider());
      }
    return llista;
  }

   List<Widget> _crearElementsCurt(){
   // Amb aquest mètode volem emprar la funcionalitat Map de les llistes
   var widgets = elements.map((element) {
      return NewWidget();
   });
  
   return widgets.toList();
 }

}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
     title: Text(element),
     );
  }
}
