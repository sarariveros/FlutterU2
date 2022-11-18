import 'package:flutter/material.dart';

class AmigosPage extends StatelessWidget {
  const AmigosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
        //centerTitle: true,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Table(
        border: TableBorder.all(
          color: Colors.white,
        ),
        children: [
          TableRow(children: [
            Text('Prueba1'),
            Text('Prueba2'),
            Text('Prueba3'),
            Text('Prueba4'),
            Text('Prueba5'),
          ]),
          TableRow(children: [
            Text('Prueba1'),
            Text('Prueba2'),
            Text('Prueba3'),
            Text('Prueba4'),
            Text('Prueba5'),
          ]),
          TableRow(children: [
            Text('Prueba1'),
            Text('Prueba2'),
            Text('Prueba3'),
            Text('Prueba4'),
            Text('Prueba5'),
          ])
        ],
      ),
    );
  }
}
