import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:sesion_3_1/page/animacion.dart';
import 'package:sesion_3_1/page/image.dart';
import 'package:sesion_3_1/page/listtitle.dart';
import 'package:sesion_3_1/page/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesion3',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        // textTheme: GoogleFonts.latoTextTheme(
        //   Theme.of(context).textTheme,
        // ),
      ),
      home: const MenuWidget(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 3'),
        leading: const Icon(Icons.playlist_add_check_outlined),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: [
            MaterialButton(
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Mis Componentes',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                minWidth: double.infinity,
                color: const Color.fromARGB(255, 62, 177, 123),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListTitle_Sara()));
                }),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Mi imagen Favorita',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                minWidth: double.infinity,
                color: const Color.fromARGB(255, 62, 177, 123),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Image_Sara()));
                }),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Animacion',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                minWidth: double.infinity,
                color: const Color.fromARGB(255, 62, 177, 123),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Animaciondemo()));
                }),
          ],
        ),
      ),
    );
  }
}
