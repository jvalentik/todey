import 'package:flutter/cupertino.dart';

class Task {
  final String name;
  bool isDone;

  Task({@required this.name, this.isDone = false});

  void toggle() {
    this.isDone = !this.isDone;
  }
}
