import 'package:flutter/material.dart';

import 'package:sesion_3_1/page/widgetdemo.dart';
import 'package:sesion_3_1/retos/TikTokScroll/Screens/Tiktok_home.dart';
import 'package:sesion_3_1/retos/travel_agency/home_travelAgency.dart';

class RetosMenu extends StatelessWidget {
  const RetosMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ButtonWidget(
              text: 'Travel Agency',
              color: Colors.lime,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeTraveAgency(),
                    ));
              },
            ),
            ButtonWidget(
              text: 'TikTokScroll',
              color: Colors.lime,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RetoTikTokScrol(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
