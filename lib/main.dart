import 'package:flutter/material.dart';
import 'package:to_do_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'to_do_app',
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}
