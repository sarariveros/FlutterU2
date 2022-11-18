import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: BorderedImage(
                  ancho: 70,
                  alto: 70,
                  img:
                      'https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916_960_720.png',
                  topL: Radius.circular(20),
                  topR: Radius.circular(20),
                  bottomL: Radius.circular(20),
                  bottomR: Radius.circular(20),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Hello', style: TextStyle(fontSize: 15)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        'Saber',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      FaIcon(
                        FontAwesomeIcons.solidHand,
                        color: Colors.amberAccent,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 80,
              ),
              const Icon(
                Icons.class_outlined,
                color: Colors.black,
                size: 30,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              'Where do you want to explore today?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 231, 230, 230),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color.fromARGB(255, 231, 230, 230),
                ),
              ),
              child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Search destination',
                      suffixIcon: Icon(
                        Icons.search,
                        size: 28,
                        color: Colors.black,
                      ))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Choose Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'See all',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 236, 125, 61)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                BorderedImage(
                  alto: 50,
                  ancho: 50,
                  img:
                      'https://cdn.pixabay.com/photo/2015/03/09/18/34/beach-666122_960_720.jpg',
                  topL: Radius.circular(15),
                  topR: Radius.circular(15),
                  bottomL: Radius.circular(15),
                  bottomR: Radius.circular(15),
                ),
                Text(
                  'Beach',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 35,
                ),
                BorderedImage(
                  alto: 50,
                  ancho: 50,
                  img:
                      'https://cdn.pixabay.com/photo/2015/07/27/17/14/mountains-862870_960_720.jpg',
                  topL: Radius.circular(15),
                  topR: Radius.circular(15),
                  bottomL: Radius.circular(15),
                  bottomR: Radius.circular(15),
                ),
                Text('Mountain', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Favourite places',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Explore',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 236, 125, 61)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BorderedImage(
                  alto: 100,
                  ancho: 100,
                  img:
                      'https://cdn.pixabay.com/photo/2015/07/27/17/14/mountains-862870_960_720.jpg',
                  topL: Radius.circular(20),
                  topR: Radius.circular(20),
                  bottomL: Radius.zero,
                  bottomR: Radius.zero,
                ),
                BorderedImage(
                  alto: 100,
                  ancho: 100,
                  img:
                      'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_960_720.jpg',
                  topL: Radius.circular(20),
                  topR: Radius.circular(20),
                  bottomL: Radius.zero,
                  bottomR: Radius.zero,
                ),
                BorderedImage(
                  alto: 100,
                  ancho: 100,
                  img:
                      'https://cdn.pixabay.com/photo/2020/02/16/07/55/beach-4852830_960_720.jpg',
                  topL: Radius.circular(20),
                  topR: Radius.circular(20),
                  bottomL: Radius.zero,
                  bottomR: Radius.zero,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Column(
                  children: const [
                    Icon(
                      Icons.home,
                      color: Colors.orangeAccent,
                      size: 25,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.orangeAccent,
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Column(
                  children: const [
                    Icon(
                      Icons.share,
                      color: Colors.grey,
                      size: 25,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                        color: Colors.orangeAccent,
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Column(
                  children: const [
                    Icon(
                      Icons.star_border_outlined,
                      color: Colors.grey,
                      size: 25,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Column(
                  children: const [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 25,
                    ),
                    Text(
                      '',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ],
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

class BorderedImage extends StatelessWidget {
  final double alto;
  final double ancho;
  final String img;
  final Radius topL;
  final Radius topR;
  final Radius bottomL;
  final Radius bottomR;

  const BorderedImage(
      {super.key,
      required this.alto,
      required this.ancho,
      required this.img,
      required this.topL,
      required this.topR,
      required this.bottomL,
      required this.bottomR});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: alto,
      width: ancho,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: topR,
              topRight: topR,
              bottomLeft: bottomL,
              bottomRight: bottomR),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                img,
              ))),
    );
  }
}
