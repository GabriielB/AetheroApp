import 'package:aethero/features/search/presentation/pages/search_page.dart';
import 'package:flutter/material.dart';

class AetheroApp extends StatelessWidget {
  const AetheroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aethero',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      home: SearchPage(),
    );
  }
}
