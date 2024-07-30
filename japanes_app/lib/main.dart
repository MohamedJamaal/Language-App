import 'package:flutter/material.dart';
import 'package:japanes_app/screens/home_page.dart';

void main() {
  runApp(const JapanessApp());
}

class JapanessApp extends StatelessWidget {
  const JapanessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
