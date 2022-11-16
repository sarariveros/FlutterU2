import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LugaresTuristicos extends StatelessWidget {
  final String? img;
  final String? title;
  final String contenido;
  // final List<Color> colores = <Color>[
  //   Colors.blueGrey,
  //   Colors.lightGreen,
  //   Colors.indigo,
  // ];

  const LugaresTuristicos(
      {super.key, this.img, this.title, required this.contenido});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 150,
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 0),
          child: SizedBox(
            child: Divider(
              thickness: 4,
              color: Colors.black,
            ),
          ),
        ),
      ],

      // Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      //   child:
      //       // Row(
      //       //   children: [

      //       Expanded(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Text(
      //           '$title',
      //           style: TextStyle(fontWeight: FontWeight.bold),
      //         ),
      //       ],
      //     ),
      //   ),
      //   Icon(
      //     Icons.star,
      //     color: Colors.amber,
      //   ),
      //   Text('41'),
      //   //],
      //   //),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       IconButton(
      //         icon: Column(
      //           children: const [
      //             Icon(
      //               Icons.call,
      //               color: Colors.lightBlue,
      //               size: 30,
      //             ),
      //             Text(
      //               'Call',
      //               style: TextStyle(color: Colors.lightBlue),
      //             )
      //           ],
      //         ),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Column(
      //           children: const [
      //             Icon(
      //               Icons.map,
      //               color: Colors.lightBlue,
      //               size: 30,
      //             ),
      //             Text(
      //               'Route',
      //               style: TextStyle(color: Colors.lightBlue),
      //             )
      //           ],
      //         ),
      //         onPressed: () {},
      //       ),
      //       IconButton(
      //         icon: Column(
      //           children: const [
      //             Icon(
      //               Icons.share,
      //               color: Colors.lightBlue,
      //               size: 30,
      //             ),
      //             Text(
      //               'Share',
      //               style: TextStyle(color: Colors.lightBlue),
      //             )
      //           ],
      //         ),
      //         onPressed: () {},
      //       ),
      //     ],
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.all(20.0),
      //   child: SizedBox(
      //     child: Text(textAlign: TextAlign.justify, contenido),
      //   ),
      // )
    );
  }
}
