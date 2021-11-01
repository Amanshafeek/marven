import 'package:flutter/material.dart';

void main() => runApp(Gamemode());

class Gamemode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Text('Gamemode'),
        ),
      ),
    );
  }
}