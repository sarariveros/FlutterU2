import 'package:flutter/material.dart';
import 'package:sesion_3_1/page/widgetdemo.dart';
import 'package:sesion_3_1/retos/travel_agency/screen/contacUs.dart';
import 'package:sesion_3_1/retos/travel_agency/widgets/header.dart';
import 'package:sesion_3_1/retos/travel_agency/widgets/titleWidget.dart';

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    final decoracion = BoxDecoration(color: Color.fromRGBO(242, 242, 242, 8));
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeaderWidget(
                page: '3',
              ),
              TitleWidget(title: 'Key features'),
              SizedBox(
                height: 15,
              ),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: Text(
                    "Travel around Americas big-hearted, musically influenced southern cities by shaking, rattling, and rolling. Beginning in the center of country music, Nashville, you'll toe-tap your way to Memphis, paying homage through the King at Craceland.",
                    style: TextStyle(fontSize: 12),
                  ),
                  decoration: decoracion),
              SizedBox(
                height: 22,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: Text(
                  "Travel around Americas big-hearted, musically influenced southern cities by shaking, rattling, and rolling. Beginning in the center of country music, Nashville, you'll toe-tap your way to Memphis, paying homage through the King at Craceland.",
                  style: TextStyle(fontSize: 12),
                ),
                decoration: decoracion,
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: Text(
                  "Travel around Americas big-hearted, musically influenced southern cities by shaking, rattling, and rolling. Beginning in the center of country music, Nashville, you'll toe-tap your way to Memphis, paying homage through the King at Craceland.",
                  style: TextStyle(fontSize: 12),
                ),
                decoration: decoracion,
              ),
              SizedBox(
                height: 22,
              ),
              ButtonWidget(
                text: 'Next',
                color: Colors.amber,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Contact(),
                      ));
                },
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
