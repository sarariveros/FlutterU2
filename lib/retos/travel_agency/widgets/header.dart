import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String page;

  const HeaderWidget({super.key, required this.page});

  @override
  Widget build(BuildContext context) {
    final headerColor = Color.fromRGBO(213, 218, 218, 1);
    return Row(
      children: [
        Text(page, style: TextStyle(color: headerColor, fontSize: 70)),
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 0.0),
              child: Divider(
                color: headerColor,
                thickness: 5.5,
                height: 36,
              )),
        ),
        //Text(title, style: TextStyle(color: headerColor, fontSize: 80)),
      ],
    );
  }
}
