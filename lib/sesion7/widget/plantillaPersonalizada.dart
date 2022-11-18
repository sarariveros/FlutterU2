import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LugaresTuristicos extends StatelessWidget {
  final String? img;
  final String? title;
  final String contenido;

  const LugaresTuristicos(
      {super.key, this.img, this.title, required this.contenido});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 180,
          child: Image.network(
            '$img',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: SizedBox(
            child: Text('$title', style: GoogleFonts.pacifico(fontSize: 25)),
            //TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: SizedBox(
            child: Text(textAlign: TextAlign.justify, contenido),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Text('Viajemos Ya!'),
              color: Colors.orange,
              textColor: Colors.white,
              onPressed: () {
                print('done');
              }),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 135, vertical: 0),
          child: SizedBox(
            child: Divider(
              thickness: 4,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
