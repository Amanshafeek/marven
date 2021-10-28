import 'package:flutter/material.dart';
import 'package:snapchat_ui/chatpage/chat_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:ChatPage() ,
    );
  }
}