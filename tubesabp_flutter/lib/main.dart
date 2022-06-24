import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

import 'perkemahan.dart';
import 'kemah.dart';

void main() {
  runApp(const KemahApp());
}

class KemahApp extends StatelessWidget {
  const KemahApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();

    return MaterialApp(
      title: 'Bumi Kemah Bandung',
      theme: theme,
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final theme = FooderlichTheme.dark();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        // backgroundColor: Colors.blue,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Bumi Kemah Bandung',
            style: theme.textTheme.headline6,
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Welcome'),
              ),
              Tab(
                child: Text('Perkemahan'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: const <Widget>[
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('assets/cover.jpg'),
                    ),
                  ),
                  Text(
                    'Bumi Kemah Bandung',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      height: 2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      'Bumi kemah bandung merupakan sebuah aplikasi untuk mencari tempat kemah. Tujuan kami membuat aplikasi ini adalah untuk membantu user dalam mempermudah pencarian tempat kemah dibandung, Apalikasi ini akan tersedia untuk web dan juga secara mobile di handphone anda.',
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: ListView.builder(
                itemCount: Perkemahan.samples.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Kemah(perkemahan: Perkemahan.samples[index]);
                          },
                        ),
                      );
                    },
                    child: buildKemahCard(Perkemahan.samples[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildKemahCard(Perkemahan kemah) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(kemah.imageUrl)),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              kemah.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}
