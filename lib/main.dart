import 'package:exchange_rate/screens/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    Application(),
  );
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
