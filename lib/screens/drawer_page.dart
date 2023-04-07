import 'package:flutter/material.dart';
import 'package:to_do_app/main.dart';
import 'package:to_do_app/screens/aboutTheApp_page.dart';
import 'package:to_do_app/screens/noteCategory_page.dart';
import 'package:to_do_app/screens/personeltodo_page.dart';
import 'package:to_do_app/screens/profile_page.dart';
import 'package:to_do_app/screens/shoppingtodo_page.dart';
import 'package:to_do_app/screens/worktodo_page.dart';

void main() {
  runApp(const MyApp());
}

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.red[100],
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            color: Colors.red[200],
            child: Column(
              children: const [
                SizedBox(
                  width: 100,
                  height: 100,
                ),
                Text(
                  'user_name',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'mail address',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'department',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ProfilePage()));
            },
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.note),
            title: const Text('Notes'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NoteCategoryPage()));
            },
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.personal_injury_outlined),
            title: const Text('Personel ToDo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PersonelToDoPage()));
            },
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.work_outline_outlined),
            title: const Text('Work ToDo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const WorkToDoPage()));
            },
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart_checkout),
            title: const Text('Shopping ToDo'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ShoppingToDoPage()));
            },
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.app_blocking),
            title: const Text('About The App'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AboutTheAppPage()));
            },
          )
        ],
      ),
    );
  }
}
