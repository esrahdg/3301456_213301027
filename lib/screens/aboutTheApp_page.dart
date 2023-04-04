import 'package:flutter/material.dart';
import 'package:to_do_app/screens/home_page.dart';

class AboutTheAppPage extends StatelessWidget {
  const AboutTheAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[100],
        body: Column(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: 100, height: 100, color: Colors.blueGrey[100]),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  width: 100, height: 100, color: Colors.blueGrey[100]),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                const Text(
                  'ToDo App',
                  style: TextStyle(fontSize: 40),
                ),
                const Text(
                  'Merhabalar',
                  style: TextStyle(fontSize: 20.0),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'ToDoList ile daha odaklı, düzenli ve sakin kal. Yeni görevler ekleyerek yapılacaklar-listeni saniyeler içinde oluştur ve bu sayede hep hayalini kurduğun zihinsel netliğe kavuş. Ayrıca uygulamamızda notlarınızı tutabileceğiniz not kısmı vardır. Tüm hayatınızı telefonunuz ve bilgisayarınızla organize ediyorsanız bu uygulama tam size göre.',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomePage()));
                    },
                    child: const Text('Anasayfaya dön')),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      width: 100, height: 100, color: Colors.blueGrey[100]),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      width: 100, height: 100, color: Colors.blueGrey[100]),
                ),
              ],
            ),
          ],
        ));
  }
}
