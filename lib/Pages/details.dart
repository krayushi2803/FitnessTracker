import 'package:fitness_tracker/Pages/Details/Widgets/graph.dart';
import 'package:fitness_tracker/Pages/Details/Widgets/steps.dart';
import 'package:fitness_tracker/Pages/Details/Widgets/dates.dart';
import 'package:fitness_tracker/Pages/Details/Widgets/info.dart';
import 'package:fitness_tracker/Pages/Details/Widgets/stats.dart';
import 'package:fitness_tracker/Widgets/bottom_navigation.dart';

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 16,
          ),
        ),
        title: Text(
          'Activity',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              maximumSize: Size(30, 30),
              minimumSize: Size(30, 30),
              shape: CircleBorder(),
              backgroundColor: const Color.fromARGB(255, 78, 15, 15),
              foregroundColor: Colors.white,
            ),
            child: Icon(
              Icons.notifications,
              size: 15,
            ),
          ),
        ],
      ),
      body: Column(children: [
        Dates(),
        Steps(),
        Graph(),
        Info(),
        Stats(),
        BottomNavigation(),
      ]),
    );
  }
}
