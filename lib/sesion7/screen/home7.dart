import 'package:flutter/material.dart';

class Home7 extends StatelessWidget {
  const Home7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 250,
            child: Image.network(
              'https://cdn.pixabay.com/photo/2022/05/22/13/21/healthy-7213383_640.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Titulo Principal',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Subtitulo Principal'),
                    ],
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text('41'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Column(
                    children: const [
                      Icon(
                        Icons.call,
                        color: Colors.lightBlue,
                        size: 32,
                      ),
                      Text(
                        'Call',
                        style: TextStyle(color: Colors.lightBlue),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Column(
                    children: const [
                      Icon(
                        Icons.map,
                        color: Colors.lightBlue,
                        size: 32,
                      ),
                      Text(
                        'Route',
                        style: TextStyle(color: Colors.lightBlue),
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
                        color: Colors.lightBlue,
                        size: 32,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(color: Colors.lightBlue),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              child: Text(
                  textAlign: TextAlign.justify,
                  'Un hospedaje u hostelaje es un tipo de alojamiento temporal que se da a una persona como invitado o mediante pago en un lugar que le sirva al menos durante la noche.​"Alojamiento, acogida y recibimiento que se hace a alguna persona, poniéndole a cubierto de las inclemencias, para que esté con comodidad y asistido.'),
            ),
          )
        ],
      ),
    );
  }
}
