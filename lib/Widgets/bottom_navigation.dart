import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 60,
        color: Colors.black87,
        child: IconTheme(
          data: IconThemeData(color: Color(0xffabadb4)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.add_chart,
              ),
              Icon(Icons.search),
              Transform.translate(
                offset: Offset(0, -15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                  child: Container(
                      padding: const EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 65, 2, 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(3, 3),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: Icon(Icons.home, color: Colors.white)),
                ),
              ),
              Icon(Icons.date_range),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/details');
                },
                child: Icon(Icons.settings),
              ),
            ],
          ),
        ),
        );
  }
}
