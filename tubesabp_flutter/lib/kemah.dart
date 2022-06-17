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
  // TODO: Add _sliderVal here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.perkemahan.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.perkemahan.imageUrl),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.perkemahan.label,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              widget.perkemahan.description,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
