import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [Colors.black, Color.fromARGB(255, 65, 2, 2)]),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 35,
            right: 40,
            child: CircleAvatar(
              minRadius: 35,
              maxRadius: 35,
              foregroundImage: AssetImage('assets/PHOTUUUU.jpg'),
            ),
          ),
          Positioned(
            left: 33,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Ayushi',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
