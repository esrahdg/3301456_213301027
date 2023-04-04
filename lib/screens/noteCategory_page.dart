import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/screens/assignmentNote_page.dart';
import 'package:to_do_app/screens/personelNote_page.dart';
import 'package:to_do_app/screens/workNote_page.dart';

class NoteCategoryPage extends StatelessWidget {
  const NoteCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        backgroundColor: Colors.red[100],
        title: const Text(
          'Category Notes',
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
              'Everything you can imagine is real.',
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
                    builder: (context) => const PersonelNotePage()));
              },
              child: const Text(
                'Personel Note',
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
                    builder: (context) => const WorkNotePage()));
              },
              child: const Text(
                'Work Note',
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
                    builder: (context) => const AssignmentNotePage()));
              },
              child: const Text(
                'Assignment Note',
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
