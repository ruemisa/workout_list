import 'package:flutter/material.dart';
import 'workout.dart';

class WorkoutCard extends StatelessWidget {

  // To use state inside a stateless widget. It will not change over time
  final Workout workout;
  final Function delete;

  WorkoutCard({ this.workout, this.delete });

  @override
  Widget build(BuildContext context) {
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
                style: TextStyle(fontSize: 16.0, color: Colors.grey[700])),
            SizedBox(height: 8.0),
            FlatButton.icon(
              onPressed: delete,
              label: Text('Delete'),
              icon: Icon(Icons.delete)
            )
          ],
        ),
      ),
    );
  }
}
