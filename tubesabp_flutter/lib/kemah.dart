import 'package:flutter/material.dart';
import 'perkemahan.dart';

class Kemah extends StatefulWidget {
  final Perkemahan perkemahan;

  const Kemah({
    Key? key,
    required this.perkemahan,
  }) : super(key: key);

  @override
  _KemahState createState() {
    return _KemahState();
  }
}

class _KemahState extends State<Kemah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.perkemahan.label),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.perkemahan.imageUrl),
              ),
            ),
            SizedBox(
              width: 300,
              child: Column(
                children: <Widget>[
                  Text(
                    widget.perkemahan.label,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    widget.perkemahan.description,
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                  const Text(
                    'Alamat',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 2,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    widget.perkemahan.alamat,
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                  const Text(
                    'Harga',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 2,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    widget.perkemahan.harga,
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                  const Text(
                    'Fasilitas',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 2,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    widget.perkemahan.fasilitas,
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                  const Text(
                    'Website',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 2,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    widget.perkemahan.website,
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                  const Text(
                    'Contact',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 2,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    widget.perkemahan.contact,
                    style: const TextStyle(fontSize: 18),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
