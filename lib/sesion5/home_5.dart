import 'package:flutter/material.dart';
//import 'package:sesion_3_1/main.dart';

class Home5 extends StatelessWidget {
  const Home5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 5'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: double.infinity,
                color: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Mi edad:',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                            letterSpacing: 2),
                      ),
                      Text(
                        '29 ',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                            letterSpacing: 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: double.infinity,
                color: Colors.amber,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Image(
                              height: 150,
                              width: 150,
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2022/06/02/16/05/woman-7238399_960_720.png')),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Nombres:',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              letterSpacing: 2),
                        ),
                        Text(
                          'Sara Daysi',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              letterSpacing: 2),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Apellidos:',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              letterSpacing: 2),
                        ),
                        Text(
                          'Riveros Cruz',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              letterSpacing: 2),
                        ),
                        // Text(
                        //   'Riveros Cruz',
                        //   style: TextStyle(
                        //       fontSize: 20,
                        //       fontWeight: FontWeight.w400,
                        //       color: Colors.black,
                        //       letterSpacing: 2),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
