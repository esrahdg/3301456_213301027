import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key, required this.taskName});
  final String taskName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(50)),
        child: Text(taskName),
      ),
    );
  }
}
