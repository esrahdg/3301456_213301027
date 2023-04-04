import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/main.dart';
import 'package:to_do_app/models/create_box.dart';
import 'package:to_do_app/models/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class PersonelToDoPage extends StatefulWidget {
  const PersonelToDoPage({super.key});
  @override
  State<PersonelToDoPage> createState() => _PersonelToDoPageState();
}

class _PersonelToDoPageState extends State<PersonelToDoPage> {
  final _controller = TextEditingController();

  List toDoList = [
    ['Morning Exersize'],
    ['Read a book.']
  ];

  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text]);
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
          'Personel ToDo List',
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
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoList(
            taskName: toDoList[index][0],
          );
        },
      ),
    );
  }
}
