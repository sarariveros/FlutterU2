import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxSwitchWidget extends StatefulWidget {
  const CheckBoxSwitchWidget({super.key});

  @override
  State<CheckBoxSwitchWidget> createState() => _CheckBoxSwitchWidgetState();
}

class _CheckBoxSwitchWidgetState extends State<CheckBoxSwitchWidget> {
  bool isSwitched = true;
  bool isChecked = true;
  bool isSwitchedCupertino = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Checkbox(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value!;
                });
              },
            ),
            CupertinoSwitch(
              value: isSwitchedCupertino,
              activeColor: CupertinoColors.activeBlue,
              onChanged: (value) {
                setState(() {
                  isSwitchedCupertino = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
