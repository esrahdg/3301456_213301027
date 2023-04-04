import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/main.dart';
import 'package:to_do_app/models/create_box.dart';
import 'package:to_do_app/models/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class WorkToDoPage extends StatefulWidget {
  const WorkToDoPage({super.key});

  @override
  State<WorkToDoPage> createState() => _WorkToDoPageState();
}

class _WorkToDoPageState extends State<WorkToDoPage> {
  final _controller = TextEditingController();
  List workToDo = [
    ['Check Mail'],
    ['Seven Hours Write Code']
  ];

  void saveNewTask() {
    setState(() {
      workToDo.add([_controller.text]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void newTask() {
    showDialog(
        context: context,
        builder: (context) {
          return CreateBox(
              controller: _controller,
              onSave: saveNewTask,
              onCancel: () => Navigator.of(context).pop());
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: Text(
          'Work ToDo List',
          style: GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 16.0),
        ),
        centerTitle: true,
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: newTask, child: const Text('Add')),
      body: ListView.builder(
        itemCount: workToDo.length,
        itemBuilder: (context, index) {
          return ToDoList(
            taskName: workToDo[index][0],
          );
        },
      ),
    );
  }
}
