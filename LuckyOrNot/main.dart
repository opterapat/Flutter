import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      themeMode: ThemeMode.system,
      home: UserInterface(),
      
    );
  }
}
