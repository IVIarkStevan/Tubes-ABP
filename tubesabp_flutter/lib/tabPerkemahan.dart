import 'package:flutter/material.dart';

import 'perkemahan.dart';
import 'kemah.dart';

class TabPerkemahan extends StatelessWidget {
  const TabPerkemahan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
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
