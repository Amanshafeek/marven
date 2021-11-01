import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:snapchat_ui/Modes/Sentrymode.dart';
import 'package:snapchat_ui/Modes/Gamemode.dart';

void main() => runApp(Modes());

class Modes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Color(0xff23232E),
        body:Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Sentrymode()));},
                child: Container(
                  color: Colors.white,
                  height: 150,
                  width: 400,
                  child: GestureDetector(

                  ),
                ),
              ),
              SizedBox(height: 21,),
              GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Gamemode()));},
                child: Container(
                  color: Colors.white,
                  height: 150,
                  width: 400,

                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}