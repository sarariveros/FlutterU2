import 'package:flutter/material.dart';

class InstagramWidget extends StatelessWidget {
  final String? img, userName;

  const InstagramWidget({super.key, this.img, this.userName});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          '$img',
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2012/02/27/15/35/lion-17335_960_720.jpg',
                        ),
                        radius: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          '$userName',
                          style: const TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                      OutlinedButton(
                        // style: ButtonStyle(shape: OutlinedBorder(),),
                        child: const Text(
                          'Seguir',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  const Text(
                    'Que quieres ver?',
                    style: TextStyle(fontSize: 12),
                  ),
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage: ExactAssetImage(
                          'assets/loadInstagramy.gif',
                        ),
                        radius: 8,
                      ),
                      // Marquee(
                      //   scrollAxis: Axis.horizontal,
                      //   text:
                      //       'There once was a boy who told this story about a boy: "',
                      // ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'Mas informacion',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      Icon(
                        Icons.location_on,
                        size: 15,
                      ),
                      Text(
                        'Miraflores, Lima',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.favorite_border,
                        ),
                        Text(
                          '42.3 mil',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.comment_rounded,
                        ),
                        Text(
                          '420',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.share,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.more_vert_outlined,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.crop_square_rounded,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
