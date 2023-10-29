import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Cards'),
     ),
      body: ListView(
       padding: EdgeInsets.all(10.0),
       children: [
         _cardTipus1(),
         SizedBox(height: 30.0),
         _cardTipus2()
       ],
     )
   );
 }
}


Widget _cardTipus1() {
 return Card(
   child: Column(
     children: [
       ListTile(
         leading: Icon(Icons.photo_album, color: Colors.blue),
         title: Text('Títol de la targeta'),
         subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),


       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           TextButton(onPressed: (){}, child: Text('OK')),
           TextButton(onPressed: (){}, child: Text('Cancel·lar')),
         ],
       )
     ],
   ),
 );
}

Widget _cardTipus2() {
 return Card(
   child: Column(
  children: [
        Image(
          image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Ficonduck.com%2Ficons%2F64943%2Farchlinux&psig=AOvVaw1xYboJBcEodwatvX_zox0G&ust=1698661112932000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCPifl_SDm4IDFQAAAAAdAAAAABAR')
          ),
        Text('Arch Linux Icon'),
      ],
    ),
 );
}

