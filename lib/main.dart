import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: WorkoutList()
));

class WorkoutList extends StatefulWidget {
  @override
  _WorkoutListState createState() => _WorkoutListState();
}

class _WorkoutListState extends State<WorkoutList> {

  List<String> workouts = [
    'Back Squat',
    'Bench Press',
    'Push Press',
    'Bent-over Rows',
    'Shoulder Press',
    'Front Squat',
    'Deadlift',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text('Workouts'),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: Column(
        children: workouts.map((workout) => Text(workout)).toList(),
      ),
    );
  }
}