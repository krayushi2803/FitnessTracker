// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:fitness_tracker/Pages/Widgets/activity.dart';
import 'package:fitness_tracker/Pages/Widgets/current.dart';
import 'package:fitness_tracker/Pages/Widgets/header.dart';
import 'package:fitness_tracker/Widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppHeader(),
          CurrentPrograms(),
          RecentActivities(),
          BottomNavigation(),
        ],
      ),
    );
  }
}
