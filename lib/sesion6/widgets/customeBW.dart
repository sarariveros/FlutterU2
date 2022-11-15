import 'package:flutter/material.dart';

class CustomeBW extends StatelessWidget {
  final Function incrementarb;
  final Function disminuirb;
  final Function resetearb;

  const CustomeBW(
      {super.key,
      required this.incrementarb,
      required this.disminuirb,
      required this.resetearb});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
            elevation: 1,
            color: Colors.black,
            minWidth: 10,
            child: const Icon(
              Icons.remove_circle_outline,
              color: Colors.white,
            ),
            onPressed: () => disminuirb()),
        MaterialButton(
            elevation: 1,
            color: Colors.black,
            minWidth: 10,
            child: const Icon(
              Icons.replay_outlined,
              color: Colors.white,
            ),
            onPressed: () => resetearb()),
        MaterialButton(
            elevation: 1,
            color: Colors.black,
            minWidth: 10,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () => incrementarb()),

        // FloatingActionButton(
        //   backgroundColor: Colors.black,
        //   heroTag: const Text('btnD'),
        //   onPressed: () => disminuirb(),
        //   child: const Icon(Icons.remove_circle_outline),
        // ),
        // FloatingActionButton(
        //   backgroundColor: Colors.black,
        //   heroTag: const Text('btnR'),
        //   onPressed: () => resetearb(),
        //   child: const Icon(Icons.replay_outlined),
        // ),
        // FloatingActionButton(
        //   heroTag: const Text('btnI'),
        //   //Identificador necesario si trabajamos con varios de botones de este tipo
        //   backgroundColor: Colors.black,
        //   onPressed: () => incrementarb(),
        //   child: const Icon(Icons.add),
        // ),
      ],
    );
  }
}
