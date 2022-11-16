import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_3_1/sesion6/widgets/customeBW.dart';

class Home6 extends StatefulWidget {
  const Home6({super.key});

  @override
  State<Home6> createState() => _Home6State();
}

class _Home6State extends State<Home6> {
  int numero = 0;
  void incrementar() => setState(() {
        numero++;
      });
  void disminuir() => setState(() {
        numero--;
      });
  void resetear() => setState(() {
        numero = 0;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sesion 6',
          style: GoogleFonts.dancingScript(fontSize: 32),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          children: [
            // Expanded(
            //   child: Container(
            //     height: double.infinity,
            //     color: Colors.black,
            //     child: Center(
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: const [
            //           Text(
            //             'Likes:',
            //             style: TextStyle(
            //                 fontSize: 15,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.amber,
            //                 letterSpacing: 2),
            //           ),
            //           Text(
            //             '29 ',
            //             style: TextStyle(
            //                 fontSize: 20,
            //                 fontWeight: FontWeight.bold,
            //                 color: Colors.amber,
            //                 letterSpacing: 2),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                color: Colors.amber,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: Image(
                              height: 150,
                              width: 150,
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2018/11/04/04/24/bear-3793241_960_720.png')),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Nombres:',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  letterSpacing: 2),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Sara Daysi',
                              style: GoogleFonts.lobster(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 2),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Apellidos:',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  letterSpacing: 2),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Riveros Cruz',
                              style: GoogleFonts.lobster(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 2),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 15,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.hotel_class_outlined),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Likes:',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  letterSpacing: 2),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text('$numero',
                            style: GoogleFonts.lobster(fontSize: 25)),
                        // const SizedBox(
                        //   height: 80,
                        // ),
                        const SizedBox(
                          height: 15,
                        ),

                        CustomeBW(
                            incrementarb: () => incrementar(),
                            disminuirb: () => disminuir(),
                            resetearb: () => resetear()),
                        // ]),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),

      //con botones flotantes
      // floatingActionButton: CustomeBW(
      //     incrementarb: () => incrementar(),
      //     disminuirb: () => disminuir(),
      //     resetearb: () => resetear()),
    );
  }
}
