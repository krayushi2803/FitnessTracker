import 'package:fitness_tracker/Models/fitness_program.dart';
import 'package:flutter/material.dart';

class CurrentPrograms extends StatefulWidget {
  const CurrentPrograms({super.key});

  @override
  State<CurrentPrograms> createState() => _CurrentProgramsState();
}

class _CurrentProgramsState extends State<CurrentPrograms> {
  ProgramType active = fitnessPrograms[0].type;

  void _changeProgram(ProgramType newType) {
    setState(() {
      active = newType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topLeft, colors: [
          Color.fromARGB(255, 32, 1, 1),
          Colors.black,
        ]),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Current Programs ',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Icon(Icons.arrow_forward_ios, size: 15),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 100,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              scrollDirection: Axis.horizontal,
              itemCount: fitnessPrograms.length,
              itemBuilder: (context, index) {
                return Program(
                  program: fitnessPrograms[index],
                  active: fitnessPrograms[index].type == active,
                  onTap: _changeProgram,
                );
              },
              separatorBuilder: (context, index) => SizedBox(width: 20),
            ),
          )
        ],
      ),
    );
  }
}

class Program extends StatelessWidget {
  final FitnessProgram program;
  final bool active;
  final Function(ProgramType) onTap;

  const Program({
    Key? key,
    required this.program,
    this.active = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(program.type);
      },
      child: Container(
        height: 100,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              active
                  ? Color.fromARGB(255, 124, 4, 4).withOpacity(.8)
                  : Colors.white.withOpacity(.8),
              BlendMode.lighten,
            ),
            image: program.image,
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.all(15),
        child: DefaultTextStyle.merge(
          style: TextStyle(
            color: active ? Colors.white : Color.fromARGB(255, 124, 4, 4),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(program.name),
              Row(
                children: [
                  Text(program.cals),
                  SizedBox(width: 15),
                  Icon(
                    Icons.timer,
                    color: Colors.white,
                    size: 16,
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.timer,
                    size: 10,
                    color: active ? Colors.white : Colors.black,
                  ),
                  Text(program.time),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
