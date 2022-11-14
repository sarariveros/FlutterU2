import 'package:flutter/material.dart';
//import 'package:sesion_3_1/main.dart';
import 'package:sesion_3_1/sesion4/email_pass.dart';
import 'package:sesion_3_1/sesion4/scrollwidget.dart';
import 'package:sesion_3_1/sesion4/slider.dart';

import '../page/widgetdemo.dart';
import 'checkbox.dart';

class Home4 extends StatelessWidget {
  const Home4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sesion 4'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonWidget(
              text: 'Email & Password',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EmailPassWidget(),
                    ));
              },
            ),
            ButtonWidget(
              text: 'checkBox - Switch',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckBoxSwitchWidget(),
                    ));
              },
            ),
            ButtonWidget(
              text: 'Slider',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SliderWidget(),
                    ));
              },
            ),
            ButtonWidget(
              text: 'Scrool - ListView -PullRefresh',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScrollWidgetPage(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
