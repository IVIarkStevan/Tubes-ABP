import 'package:flutter/material.dart';

class TabWelcome extends StatelessWidget {
  const TabWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
