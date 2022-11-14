import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentvalue = 40;
  double _cupervalue = 0;
  double inicio = 0;
  double fin = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Slider(
              value: _currentvalue,
              max: 100,
              divisions: 5,
              label: _currentvalue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _currentvalue = value;
                });
              },
            ),
            SizedBox(
              width: double.maxFinite,
              child: CupertinoSlider(
                min: 0.0,
                max: 100.0,
                divisions: 20,
                activeColor: CupertinoColors.systemBlue,
                thumbColor: CupertinoColors.activeOrange,
                value: _cupervalue,
                onChanged: (value) {
                  setState(() {
                    _cupervalue = value;
                  });
                },
              ),
            ),
            RangeSlider(
              values: RangeValues(inicio, fin),
              activeColor: Color.fromARGB(255, 157, 255, 18),
              inactiveColor: Colors.amber,
              min: 0.0,
              max: 100.0,
              onChanged: (value) {
                setState(() {
                  inicio = value.start;
                  fin = value.end;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
