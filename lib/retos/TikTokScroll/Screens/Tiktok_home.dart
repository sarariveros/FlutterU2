import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_3_1/retos/TikTokScroll/Screens/page1.dart';
import 'package:sesion_3_1/retos/TikTokScroll/Screens/page2.dart';
import 'package:sesion_3_1/retos/TikTokScroll/Screens/page3.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class RetoTikTokScrol extends StatefulWidget {
  const RetoTikTokScrol({super.key});

  @override
  State<RetoTikTokScrol> createState() => _RetoTikTokScrolState();
}

class _RetoTikTokScrolState extends State<RetoTikTokScrol> {
  late Controller controller;
  Controller? testingController;

  final List<dynamic> pages = [const Page1(), const Page2(), const Page3()];
  @override
  void initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? curretIndex}) {
    print('object');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'Turismo en Arequipa',
      //     style: GoogleFonts.lobster(fontSize: 35),
      //   ),
      //   centerTitle: true,
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Colors.greenAccent,
      // ),
      body: TikTokStyleFullPageScroller(
        contentSize: pages.length,
        swipePositionThreshold: 0.2,
        swipeVelocityThreshold: 2000,
        animationDuration: const Duration(milliseconds: 400),
        // ^ how long the animation will take
        controller: controller,
        builder: (BuildContext context, int index) {
          final page = pages[index];
          return page;
        },
      ),
    );
  }
}
