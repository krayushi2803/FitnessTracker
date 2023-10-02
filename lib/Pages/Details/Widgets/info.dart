import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Color.fromARGB(255, 26, 1, 1),
          Color.fromARGB(255, 68, 8, 8),
        ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Statistics(value: '345', unit: 'kcal', label: 'Calories'),
          Statistics(value: '3.6', unit: 'km', label: 'Distance'),
          Statistics(value: '1.5', unit: 'hr', label: 'Hours'),
        ],
      ),
    );
  }
}

class Statistics extends StatelessWidget {
  final String value;
  final String unit;
  final String label;

  const Statistics({
    Key? key,
    required this.value,
    required this.unit,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Color.fromARGB(255, 26, 1, 1),
          Color.fromARGB(255, 68, 8, 8),
        ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text.rich(
            TextSpan(
                text: value,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
                children: [
                  const TextSpan(text: ' '),
                  TextSpan(
                    text: unit,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ]),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
