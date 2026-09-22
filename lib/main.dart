import 'package:flutter/material.dart';

import 'homePage.dart';

void main() {
  runApp(const WisataKampusApp());
}

class WisataKampusApp extends StatelessWidget {
  const WisataKampusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Kampus',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0879D9)),
      ),
      home: const HomePage(),
    );
  }
}
