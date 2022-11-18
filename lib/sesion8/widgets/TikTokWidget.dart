import 'package:flutter/material.dart';

class TikTokWidget extends StatelessWidget {
  final String? img, userName;

  const TikTokWidget({super.key, required this.img, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          // 'https://cdn.pixabay.com/photo/2016/12/08/01/21/door-1890746_960_720.jpg'
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
                      Text(
                        '$userName',
                        style: const TextStyle(fontSize: 15),
                      ),
                      const Icon(
                        Icons.verified,
                        color: Colors.lightBlue,
                        size: 18,
                      )
                    ],
                  ),
                  const Text('#Hola #Mundo #Flutter'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2012/02/27/15/35/lion-17335_960_720.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.favorite,
                        ),
                        Text('42'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.comment,
                        ),
                        Text('42'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.bookmark,
                        ),
                        Text('42'),
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
                        Text('42'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Column(
                      children: const [
                        Icon(
                          Icons.favorite,
                        ),
                        Text('42'),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
