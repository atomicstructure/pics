import 'package:flutter/material.dart';
import 'package:pics/screens/homescreen.dart';

void main() {
  runApp(const Pics());
}

class Pics extends StatelessWidget {
  const Pics({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(),
    );
  }
}
