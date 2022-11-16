import 'package:flutter/cupertino.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final titleStyle = TextStyle(
      color: Color.fromRGBO(67, 88, 248, 1),
      fontSize: 35,
      fontWeight: FontWeight.bold);

  TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: titleStyle,
      textAlign: TextAlign.left,
    );
  }
}
