import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sesion_3_1/page/widgetdemo.dart';
import 'package:sesion_3_1/travel_agency/screen/3.dart';
import 'package:sesion_3_1/travel_agency/widgets/header.dart';
import 'package:sesion_3_1/travel_agency/widgets/titleWidget.dart';

class Two extends StatelessWidget {
  const Two({super.key});

  @override
  Widget build(BuildContext context) {
    final subtitleStyle = TextStyle(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
    return Scaffold(
      // appBar: AppBar(
      //   title: Padding(
      //     padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
      //     child: const HeaderWidget(
      //       page: '2',
      //     ),
      //   ),
      //   automaticallyImplyLeading: false,
      //),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(
                page: '2',
              ),
              TitleWidget(title: 'Find your tour'),
              SizedBox(
                height: 20,
              ),
              Text('Museum tours', style: subtitleStyle),
              SizedBox(
                height: 10,
              ),
              Text(
                "Travel around Americas big-hearted, musically influenced southern cities by shaking, rattling, and rolling. Beginning in the center of country music, Nashville, you'll toe-tap your way to Memphis, paying homage through the King at Craceland.",
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.star,
                          color: Colors.white,
                        ),
                        FaIcon(
                          FontAwesomeIcons.star,
                          color: Colors.white,
                        ),
                        FaIcon(
                          FontAwesomeIcons.star,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Restaurant tours',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Travel around Americas big-hearted, musically influenced southern cities by shaking, rattling, and rolling. Beginning in the center of country music, Nashville, you'll toe-tap your way to Memphis, paying homage through the King at Craceland.",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration:
                    BoxDecoration(color: Color.fromRGBO(67, 88, 248, 1)),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Sport events', style: subtitleStyle),
              SizedBox(
                height: 10,
              ),
              Text(
                "Travel around Americas big-hearted, musically influenced southern cities by shaking, rattling, and rolling. Beginning in the center of country music, Nashville, you'll toe-tap your way to Memphis, paying homage through the King at Craceland.",
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              ButtonWidget(
                text: 'Next',
                color: Colors.amber,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Three(),
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
  }
}
