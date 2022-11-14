import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';

class ButtonWidget extends StatelessWidget {
  // const ButtonWidget({super.key});
  final String? text;
  final Function? onPressed;

  const ButtonWidget({super.key, this.text = '', this.onPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: double.infinity,
      elevation: 1,
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        text!,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: () => onPressed!(),
    );
  }
}
