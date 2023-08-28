// ... (import statements)
import 'package:arndomuser/Screens/randomUserScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const RandomUserApp());
}

class RandomUserApp extends StatelessWidget {
  const RandomUserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'RandomUser App',
      home: RandomUserScreen(),
    );
  }
}

