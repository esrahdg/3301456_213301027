import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/main.dart';
import 'package:to_do_app/models/create_box.dart';
import 'package:to_do_app/models/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class ShoppingToDoPage extends StatefulWidget {
  const ShoppingToDoPage({super.key});

  @override
  State<ShoppingToDoPage> createState() => _ShoppingToDoPageState();
}

class _ShoppingToDoPageState extends State<ShoppingToDoPage> {
  final _controller = TextEditingController();

  List shoppingToDo = [
    ['Milk'],
    ['Egg'],
    ['Bread']
  ];
  void saveNewTask() {
    setState(() {
      shoppingToDo.add([_controller.text]);
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
          'Shopping ToDo List',
          style: GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 16.0),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: newTask,
        child: const Text('Add'),
      ),
      body: ListView.builder(
        itemCount: shoppingToDo.length,
        itemBuilder: (context, index) {
          return ToDoList(taskName: shoppingToDo[index][0]);
        },
      ),
    );
  }
}
