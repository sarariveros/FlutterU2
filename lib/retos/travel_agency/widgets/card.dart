import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardWidget extends StatelessWidget {
  final String label;
  final IconData icono;

  const CardWidget({super.key, required this.label, required this.icono});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Column(
        children: [
          FaIcon(
            icono,
            color: Color.fromRGBO(67, 88, 248, 1),
          ),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            softWrap: true,
            textAlign: TextAlign.center,
            // overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
