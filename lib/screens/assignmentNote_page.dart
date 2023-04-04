import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/main.dart';
import 'package:to_do_app/models/create_box.dart';
import 'package:to_do_app/models/todo_note.dart';

void main() {
  runApp(const MyApp());
}

class AssignmentNotePage extends StatefulWidget {
  const AssignmentNotePage({super.key});

  @override
  State<AssignmentNotePage> createState() => _AssignmentNotePageState();
}

class _AssignmentNotePageState extends State<AssignmentNotePage> {
  final _controller = TextEditingController();

  List assignmentNote = [
    ['8h/day | Total 120h Work Flutter']
  ];
  void saveNewTask() {
    setState(() {
      assignmentNote.add([_controller.text]);
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
          'Assignment Notes',
          style: GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 16.0),
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
        itemCount: assignmentNote.length,
        itemBuilder: (context, index) {
          return ToDoNote(noteName: assignmentNote[index][0]);
        },
      ),
    );
  }
}
