import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/main.dart';
import 'package:to_do_app/screens/personeltodo_page.dart';
import 'package:to_do_app/screens/shoppingtodo_page.dart';
import 'package:to_do_app/screens/worktodo_page.dart';

void main() {
  runApp(const MyApp());
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        title: const Text(
          'Category',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Organize work and life, finally.',
              style:
                  GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 25.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(50, 50))),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PersonelToDoPage()));
              },
              child: const Text(
                'Personel ToDo List',
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.black54,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(50, 50))),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const WorkToDoPage()));
              },
              child: const Text(
                'Work ToDo List',
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.black54,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(50, 50))),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ShoppingToDoPage()));
              },
              child: const Text(
                'Shopping ToDo List',
                style: TextStyle(color: Colors.black, fontSize: 15.0),
              ),
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
