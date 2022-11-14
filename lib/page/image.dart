import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Image_Sara extends StatelessWidget {
  const Image_Sara({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image'),
        centerTitle: true,
      ),
      body: const Center(
        child: SizedBox(
          height: 200,
          width: double.infinity,
          child: FadeInImage(
            placeholder: AssetImage('assets/giphy.gif'),
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2022/07/13/16/25/cat-7319589_960_720.jpg'),
          ),
        ),
      ),
    );
  }
}
