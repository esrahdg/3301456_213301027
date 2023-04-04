import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/main.dart';
import 'package:to_do_app/models/create_box.dart';
import 'package:to_do_app/models/todo_note.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class PersonelNotePage extends StatefulWidget {
  const PersonelNotePage({super.key});

  @override
  State<PersonelNotePage> createState() => _PersonelNotePageState();
}

class _PersonelNotePageState extends State<PersonelNotePage> {
  final _controller = TextEditingController();

  List toDoNote = [
    ['Life is too short to remove usb safely.'],
  ];

  void saveNewTask() {
    setState(() {
      toDoNote.add([_controller.text]);
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
          'Personel Note',
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
        itemCount: toDoNote.length,
        itemBuilder: (context, index) {
          return ToDoNote(noteName: toDoNote[index][0]);
        },
      ),
    );
  }
}
