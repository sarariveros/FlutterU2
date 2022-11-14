import 'package:flutter/material.dart';

class EmailPassWidget extends StatelessWidget {
  const EmailPassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email - Password'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFormField(
              //autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(50)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey,
                  )),
                  filled: true,
                  fillColor: Colors.amber,
                  hintText: 'correo',
                  hintStyle: const TextStyle(color: Colors.black),
                  suffixIcon: Icon(Icons.accessible_outlined,
                      color: Colors.black, size: 30),
                  contentPadding: EdgeInsets.all(15)),
            ),
            TextFormField(
              obscureText: true,
              // autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(50)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey,
                  )),
                  filled: true,
                  fillColor: Colors.amber,
                  hintText: 'password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.accessible_outlined,
                      color: Colors.black, size: 30),
                  contentPadding: EdgeInsets.all(15)),
            ),
            TextFormField(
              obscureText: true,
              //autofocus: true,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 2, color: Colors.black),
                      borderRadius: BorderRadius.circular(50)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey,
                  )),
                  filled: true,
                  fillColor: Colors.amber,
                  hintText: 'telefono',
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.accessible_outlined,
                      color: Colors.black, size: 30),
                  contentPadding: EdgeInsets.all(15)),
            )
          ],
        ),
      ),
    );
  }
}
