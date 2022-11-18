import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.network(
            'https://cdn.pixabay.com/photo/2017/01/22/17/24/paris-2000275_960_720.jpg',
            fit: BoxFit.fill,
            width: 500,
            height: 600,
          ),
        ),
        Expanded(
          child: Container(
            // color: Colors.pink,
            decoration: BoxDecoration(
              // color: Colors.pink,
              borderRadius: BorderRadius.circular(20),
              //border: Border.all(color: Colors.black),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                )
              ],
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        'FAVORITE PLACE',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FaIcon(
                        FontAwesomeIcons.star,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  Text(
                    'Eifel Tower',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 18,
                      ),
                      Text(
                        'Paris, France',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
