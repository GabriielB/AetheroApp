import 'package:flutter/material.dart';

class AetheroApp extends StatelessWidget {
  const AetheroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aethero',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      home: Scaffold(body: Center(child: Text("Hello, Aethero!"))),
    );
  }
}
