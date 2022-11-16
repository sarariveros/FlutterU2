import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sesion_3_1/page/widgetdemo.dart';
import 'package:sesion_3_1/travel_agency/screen/2.dart';
import 'package:sesion_3_1/travel_agency/widgets/card.dart';
import 'package:sesion_3_1/travel_agency/widgets/header.dart';
import 'package:sesion_3_1/travel_agency/widgets/titleWidget.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Padding(
      //   //   padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
      //   //   child: const HeaderWidget(
      //   //     page: '1',
      //   //   ),
      //   // ),
      //   automaticallyImplyLeading: false,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(
                page: '1',
              ),
              TitleWidget(
                title: 'Introduction',
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Travel around Americas big-hearted, musically influenced southern cities by shaking, rattling, and rolling. Beginning in the center of country music, Nashville, you'll toe-tap your way to Memphis, paying homage through the King at Craceland, before continuing on to New Orleans, the heart and soul of the party.",
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CardWidget(
                      label: 'Accommodation', icono: FontAwesomeIcons.bed),
                  CardWidget(
                      label: 'Guide', icono: FontAwesomeIcons.mapLocation),
                  CardWidget(label: 'Meals', icono: FontAwesomeIcons.bowlFood),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardWidget(label: 'Transport', icono: FontAwesomeIcons.car),
                  CardWidget(
                      label: 'Exclusive Photo',
                      icono: FontAwesomeIcons.cameraRetro),
                  CardWidget(
                      label: 'COVID-19 health & safety measures',
                      icono: FontAwesomeIcons.syringe),
                ],
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
                        builder: (context) => const Two(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
