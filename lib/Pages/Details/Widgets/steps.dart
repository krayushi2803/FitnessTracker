import 'package:flutter/material.dart';

class Steps extends StatelessWidget {
  const Steps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Color.fromARGB(255, 26, 1, 1),
          Color.fromARGB(255, 35, 5, 5),
        ]),
      ),
    );
  }
}
