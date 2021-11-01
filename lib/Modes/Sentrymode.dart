import 'package:flutter/material.dart';

void main() => runApp(Sentrymode());

class Sentrymode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: Text('Sentry Mode'),
        ),
      ),
    );
  }
}