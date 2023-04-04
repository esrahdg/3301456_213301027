import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/models/create_box.dart';
import 'package:to_do_app/models/todo_note.dart';

class WorkNotePage extends StatefulWidget {
  const WorkNotePage({super.key});

  @override
  State<WorkNotePage> createState() => _WorkNotePageState();
}

class _WorkNotePageState extends State<WorkNotePage> {
  final _controller = TextEditingController();

  List worktodoNote = [
    ['Intern startup: 17 July 2023']
  ];
  void saveNewTask() {
    setState(() {
      worktodoNote.add([_controller.text]);
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
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          backgroundColor: Colors.red[200],
          title: Text(
            'Work Note',
            style:
                GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 16.0),
          ),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: newTask,
          child: const Text(
            'Add',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
          itemCount: worktodoNote.length,
          itemBuilder: (context, index) {
            return ToDoNote(noteName: worktodoNote[index][0]);
          },
        ));
  }
}
