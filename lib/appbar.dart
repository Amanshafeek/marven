import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapchat_ui/network/Networkbinding.dart';
import 'package:snapchat_ui/network/GetXNetworkManager.dart';
import 'package:snapchat_ui/network/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);


  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //Initiate Bindings we have created with GETX
      initialBinding: NetworkBinding() ,
      home: MyHomePage(),
    );
  }
}
final GetXNetworkManager _networkManager = Get.find<GetXNetworkManager>();

@override
Widget build(BuildContext context) {
  return AppBar(
    elevation: 10,
    title: GetBuilder<GetXNetworkManager>(builder: (builder)=>
        AnimatedDefaultTextStyle(child: Text((_networkManager.connectionType == 0 )? 'Offline Mode' : (_networkManager.connectionType == 1) ? 'You are Connected to Wifi' : 'You are Connected to Mobile Internet',style: TextStyle(fontSize:30,fontFamily:'Bebas'),))),
  );
}
