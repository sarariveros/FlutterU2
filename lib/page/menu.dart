import 'package:flutter/material.dart';
import 'package:sesion_3_1/page/widgetdemo.dart';

import '../sesion4/home_4.dart';
import '../sesion5/home_5.dart';
import '../sesion6/screen/home_6.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Sesiones Flutter',
            style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonWidget(
                text: 'Sesion 4',
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home4(),
                      ));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                text: 'Sesion 5',
                color: Colors.amber,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home5(),
                      ));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                text: 'Sesion 6',
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home6(),
                      ));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                text: 'Sesion 7',
                color: Colors.amber,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home6(),
                      ));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                text: 'Sesion 8',
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home6(),
                      ));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                text: 'Sesion 9',
                color: Colors.amber,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Home6(),
                      ));
                },
              ),
              // MaterialButton(onPressed: onPressed)
            ],
          ),
        ),
      ),
    );
  }
}
