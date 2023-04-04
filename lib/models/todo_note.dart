import 'package:flutter/material.dart';

class ToDoNote extends StatelessWidget {
  final String noteName;

  const ToDoNote({super.key, required this.noteName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: const EdgeInsets.all(25.0),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(50)),
        child: Text(noteName),
      ),
    );
  }
}
