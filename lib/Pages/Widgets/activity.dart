import 'dart:math';

import 'package:flutter/material.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: double.infinity,
          height: 170,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Colors.black, Color.fromARGB(255, 65, 2, 2)]),
          ),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            children: [
              Text(
                'Recent Activities',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => ActivityItem(),
                ),
              ),
            ],
          )),
    );
  }
}

class ActivityItem extends StatelessWidget {
  const ActivityItem({super.key});
  static const activities = ['Running', 'Swimming', 'Hiking', 'Walking'];

  @override
  Widget build(BuildContext context) {
    String activity = activities[Random().nextInt(activities.length)];
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/details');
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffe1e1e1)),
            borderRadius: BorderRadius.circular(10)),
        child: Row(children: [
          SizedBox(width: 10),
          Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffcff2ff),
              ),
              height: 35,
              width: 35,
              child: Container(
                  decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/Running.jpg'),
                  fit: BoxFit.fill,
                ),
              ))),
          SizedBox(width: 20),
          Text(activity,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              )),
          SizedBox(width: 70),
          Icon(
            Icons.timer,
            size: 12,
            color: Colors.white,
          ),
          Text(' 30 mins ',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              )),
          Icon(
            Icons.wb_sunny_outlined,
            size: 12,
            color: Colors.white,
          ),
          Text(' 55 kkal',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              )),
        ]),
      ),
    );
  }
}
