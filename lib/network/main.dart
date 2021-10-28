import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snapchat_ui/network/homepage.dart';
import 'package:snapchat_ui/network/connectivityprovider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ConnectivityProvider(),
          child: HomePage(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomePage(),
      ),
    );
  }
}