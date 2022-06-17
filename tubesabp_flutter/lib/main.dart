import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class Kemah {
  final String title;
  final String description;

  const Kemah(this.title, this.description);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Tubes ABP - Kelompok 2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: WelcomeScreen(
        kemahs: List.generate(
          20,
          (i) => Kemah(
            'Perkemahan $i',
            'Deskripsi perkemahan $i',
          ),
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required this.kemahs});
  // final List<String> entries = <String>['A', 'B', 'C'];
  // final List<int> colorCodes = <int>[600, 500, 100];

  final List<Kemah> kemahs;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Tubes ABP'),
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
            const Center(
              child: Text('Welcome!'),
              // child: GridView.count(
              //   primary: false,
              //   padding: const EdgeInsets.all(20),
              //   crossAxisSpacing: 10,
              //   mainAxisSpacing: 10,
              //   crossAxisCount: 2,
              //   childAspectRatio: (1 / 1),
              //   children: <Widget>[
              //     Container(
              //       color: Colors.white,
              //       child: Center(
              //         child: const Text("Test Praktikum"),
              //       ),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(8),
              //       color: Colors.brown,
              //       child: const Text('grid 1'),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(8),
              //       color: Colors.blue,
              //       child: const Text('grid 2'),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(8),
              //       color: Colors.green,
              //       child: const Text('grid 3'),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(8),
              //       color: Colors.black,
              //       child: const Text('grid 4'),
              //     ),
              //     Container(
              //       padding: const EdgeInsets.all(8),
              //       color: Colors.red,
              //       child: const Text('grid 5'),
              //     ),
              //   ],
              // ),
            ),
            Center(
              child: ListView.builder(
                itemCount: kemahs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(kemahs[index].title),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Perkemahan(kemah: kemahs[index]),
                        ),
                      );
                    },
                  );
                },
              ),
              // child: ListView.separated(
              //   padding: const EdgeInsets.all(8),
              //   itemCount: entries.length,
              //   itemBuilder: (BuildContext context, int index) {
              //     return Container(
              //       height: 50,
              //       color: Colors.amber[colorCodes[index]],
              //       child: Center(child: Text('Entry ${entries[index]}')),
              //     );
              //   },
              //   separatorBuilder: (BuildContext context, int index) =>
              //       const Divider(),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}

class Perkemahan extends StatelessWidget {
  const Perkemahan({super.key, required this.kemah});

  final Kemah kemah;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kemah.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(kemah.description),
      ),
    );
  }
}
