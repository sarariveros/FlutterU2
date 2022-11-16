import 'package:flutter/material.dart';

class PlantillaWidget extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtittle;
  final String contenido;

  const PlantillaWidget(
      {super.key,
      this.img,
      this.title,
      this.subtittle,
      required this.contenido});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 120,
          child: Image.network(
            '$img',
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
                  children: [
                    Text(
                      '$title',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('$subtittle'),
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
                      size: 30,
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
                      size: 30,
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
                      size: 30,
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
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            child: Text(textAlign: TextAlign.justify, contenido),
          ),
        )
      ],
    );
  }
}
