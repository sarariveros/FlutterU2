import 'package:flutter/material.dart';
import 'package:sesion_3_1/page/widgetdemo.dart';

import '../sesion4/home_4.dart';
import '../sesion5/home_5.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sesiones Clases'),
        centerTitle: true,
        elevation: 0,
        //leading: Icon(Icons),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonWidget(
              text: 'Sesion 4',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home4(),
                    ));
              },
            ),
            ButtonWidget(
              text: 'Sesion 5',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home5(),
                    ));
              },
            )
            // MaterialButton(onPressed: onPressed)
          ],
        ),
      ),
    );
  }
}
