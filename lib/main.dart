import 'package:flutter/material.dart';
import 'workout.dart';

void main() => runApp(MaterialApp(home: WorkoutList()));

class WorkoutList extends StatefulWidget {
  @override
  _WorkoutListState createState() => _WorkoutListState();
}

class _WorkoutListState extends State<WorkoutList> {
  List<Workout> workouts = [
    Workout(name: 'Bench Press', sets: 5, reps: 5),
    Workout(name: 'Back Squats', sets: 5, reps: 5),
    Workout(name: 'Bent-over Row', sets: 5, reps: 5),
    Workout(name: 'Push Press', sets: 5, reps: 5),
    Workout(name: 'Front Squat', sets: 5, reps: 5),
    Workout(name: 'Incline Bench Press', sets: 5, reps: 5),
    Workout(name: 'Shoulder Press', sets: 5, reps: 5),
    Workout(name: 'Deadlift', sets: 5, reps: 5),
  ];

  Widget workoutTemplate(workout) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              workout.name,
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 1.5,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8.0),
            Text('${workout.sets} x ${workout.reps}',
                style: TextStyle(fontSize: 16.0, color: Colors.grey[700]))
          ],
        ),
      ),
    );
  }

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
              workouts.map((workout) => workoutTemplate(workout)).toList(),
        ),
      ),
    );
  }
}
