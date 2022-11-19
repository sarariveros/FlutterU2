import 'package:flutter/material.dart';
import 'package:sesion_3_1/sesion8/widgets/InstagramWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2019/07/24/10/57/fantasy-4359903_960_720.jpg',
        'userName': 'User1',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2017/10/31/02/26/fantasy-2904092_960_720.jpg',
        'userName': 'User2',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2016/11/16/20/39/cathedral-1829985_960_720.jpg',
        'userName': 'User3',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2014/12/24/00/07/woman-578820_960_720.jpg',
        'userName': 'User4',
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2018/09/08/21/42/woman-3663404_960_720.jpg',
        'userName': 'User5',
      },
    ];

    final PageController controller = PageController();
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          // TikTokWidget(),
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: data.length,
            controller: controller,
            itemBuilder: (context, index) {
              final datos = data[index];
              return InstagramWidget(
                  img: datos['img'], userName: datos['userName']);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //IconButton(onPressed: () {}, icon: const Icon(Icons.tv_rounded)),
              SizedBox(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(''),
                      Text(''),
                    ],
                  )),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.camera_alt_outlined))
            ],
          )
        ],
      )),
    );
  }
}
