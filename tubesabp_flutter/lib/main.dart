import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';
import 'home.dart';

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
      debugShowCheckedModeBanner: false,
    );
  }
}
