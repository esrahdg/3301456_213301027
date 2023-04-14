import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/main.dart';
import 'package:to_do_app/screens/category_page.dart';
import 'package:to_do_app/screens/drawer_page.dart';

void main() {
  runApp(const MyApp());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      drawer: const DrawerPage(),
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: const Center(child: Text('ToDo LIST APP')),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 200,
              color: Colors.deepPurple[200],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'KURAL 1: KENDİNE ODAKLAN GÜNÜNÜ PLANLA VE HEP MOTİVASYONUNU KORU. “Sizi gerçekten motive edebilen tek kişi kendinizdir.” –Shaquille O’Neal',
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      fontSize: 16.0,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 200,
              color: Colors.deepPurple[200],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'KURAL 2: SENİ RAHATSIZ EDEN ŞEYLERDEN UZAKLAŞ SOSYAL MEDYA KULLANIMINI MİNİMUMA İNDİR VE DAHA DA ÖNEMLİSİ KENDİNİ ÖNEMSE. “Hayat her ne kadar zor görünse de, yapabileceğiniz ve başarabileceğiniz bir şey her zaman vardır.” -Stephen Hawking',
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic,
                      fontSize: 16.0,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CategoryPage()));
            },
            child: const Text('Hadi plan yap!'),
          )
        ],
      ),
    );
  }
}
