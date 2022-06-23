import 'package:flutter/material.dart';

import 'perkemahan.dart';
import 'kemah.dart';

void main() {
  runApp(const KemahApp());
}

class KemahApp extends StatelessWidget {
  const KemahApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Bumi Kemah Bandung',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Bumi Kemah Bandung'),
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
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  SizedBox(
                    height: 300,
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
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis consequatur eligendi quisquam doloremque vero ex debitis veritatis placeat unde animi laborum sapiente illo possimus, commodi dignissimos obcaecati illum maiores corporis.',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod itaque voluptate nesciunt laborum incidunt. Officia, quam consectetur. Earum eligendi aliquam illum alias, unde optio accusantium soluta, iusto molestiae adipisci et?',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left,
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
