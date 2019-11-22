import 'package:flutter/material.dart';
import 'workout.dart';
import 'workout_card.dart';

void main() => runApp(MaterialApp(home: WorkoutList()));

class WorkoutList extends StatefulWidget {
  @override
  _WorkoutListState createState() => _WorkoutListState();
}

class _WorkoutListState extends State<WorkoutList> {
  List<Workout> workouts = [
    Workout(name: 'Bench Press', sets: 5, reps: 5),
    Workout(name: 'Back Squats', sets: 5, reps: 5),
    Workout(name: 'Overhead Press', sets: 5, reps: 5),
    Workout(name: 'Deadlift', sets: 5, reps: 5),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: Text('Workouts'),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
        child: Column(
          children:
              workouts.map((workout) => WorkoutCard(
                workout: workout,
                delete: () {
                  setState(() {
                    workouts.remove(workout);
                  });
                }
              )).toList(),
        ),
      ),
    );
  }
}

