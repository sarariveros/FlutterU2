import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'dart:math'

class Animaciondemo extends StatefulWidget {
  const Animaciondemo({super.key});

  @override
  State<Animaciondemo> createState() => _AnimaciondemoState();
}

class _AnimaciondemoState extends State<Animaciondemo> {
  double _width = 70;
  double _height = 70;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animacion'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: Duration(seconds: 10),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ads_click),
          backgroundColor: Colors.amber,
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(500).toDouble();
              _height = random.nextInt(500).toDouble();
              _color = Color.fromRGBO(random.nextInt(300), random.nextInt(300),
                  random.nextInt(300), 1);
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          }),
    );
  }
}
