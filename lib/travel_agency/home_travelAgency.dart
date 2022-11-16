import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sesion_3_1/page/widgetdemo.dart';

import 'package:sesion_3_1/travel_agency/screen/1.dart';

class HomeTraveAgency extends StatelessWidget {
  const HomeTraveAgency({super.key});

  @override
  Widget build(BuildContext context) {
    final primarycolor = Color.fromRGBO(59, 91, 248, 1);
    final titulo = TextStyle(
      color: primarycolor,
      fontSize: 50,
      fontWeight: FontWeight.bold,
    );
    final subtitulo = TextStyle(color: Colors.black, fontSize: 15);
    final header = TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(FontAwesomeIcons.plane),
            const SizedBox(
              width: 10,
            ),
            Text(
              'TRAVEL AGENCY',
              style: header,
            ),
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),

              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2016/01/09/18/27/journey-1130732_960_720.jpg'))),
              ),
              SizedBox(
                height: 20,
              ),
              Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  children: [
                    Text(
                      'Holidays in New-York',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: titulo,
                    ),
                    Text('View our tour packages today',
                        textAlign: TextAlign.center, style: subtitulo),
                  ]),
              // ),
              SizedBox(
                height: 10,
              ),
              ButtonWidget(
                text: 'SWIPE',
                color: Colors.amber,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const One(),
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
