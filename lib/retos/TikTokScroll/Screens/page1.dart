import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Monasterio de Santa Catalina';
    String img =
        'https://cdn.pixabay.com/photo/2020/03/14/09/41/monastery-of-santa-catalina-4930129_960_720.jpg';
    String contenido =
        'El Monasterio de Santa Catalina de Siena, o Convento de Santa Catalina, es un complejo turístico religioso ubicado en el centro histórico de Arequipa, departamento de Arequipa, Perú.';
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 180,
            child: Image.network(
              img,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: SizedBox(
              child: Text(title, style: GoogleFonts.pacifico(fontSize: 25)),
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
            padding: EdgeInsets.symmetric(horizontal: 105, vertical: 0),
            child: SizedBox(
              child: Divider(
                thickness: 4,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
