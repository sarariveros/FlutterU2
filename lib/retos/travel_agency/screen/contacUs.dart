import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sesion_3_1/page/widgetdemo.dart';
import 'package:sesion_3_1/retos/travel_agency/home_travelAgency.dart';
import 'package:sesion_3_1/retos/travel_agency/widgets/titleWidget.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    final decoracion = BoxDecoration(color: Color.fromRGBO(242, 242, 242, 8));
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 25, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWidget(title: 'Contact us'),
              SizedBox(
                height: 20,
              ),
              Text(
                "Travel around Americas big-hearted, musically influenced southern cities by shaking, rattling, and rolling. Beginning in the center of country music, Nashville, you'll toe-tap your way to Memphis, paying homage through the King at Craceland.",
                textAlign: TextAlign.left,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FaIcon(
                      size: 35,
                      FontAwesomeIcons.locationPin,
                      color: Color.fromRGBO(59, 91, 248, 1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "7566 170th St W ",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                    Text(
                      "Lakeville, California",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ],
                ),
                decoration: decoracion,
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FaIcon(
                      size: 35,
                      FontAwesomeIcons.phone,
                      color: Color.fromRGBO(59, 91, 248, 1),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "(952) 432-9014",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                    Text(
                      "(952) 432-9014",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                      softWrap: true,
                    ),
                  ],
                ),
                decoration: decoracion,
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.globe,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'WWWW.TRAVELAGENCY.COM',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration:
                    BoxDecoration(color: Color.fromRGBO(67, 88, 248, 1)),
              ),
              // ButtonWidget(
              //   text: 'Home',
              //   color: Colors.amber,
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => const HomeTraveAgency(),
              //         ));
              //   },
              // ),
              // SizedBox(
              //   height: 20,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
