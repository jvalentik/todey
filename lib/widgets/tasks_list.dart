import 'package:flutter/material.dart';
import 'package:todey/models/task.dart';
import 'package:todey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy food'),
    Task(name: 'Get gas'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          name: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkBoxCallback: (checkBoxState) {
            setState(() {
              tasks[index].toggle();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
