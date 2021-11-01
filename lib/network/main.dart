import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapchat_ui/network/Networkbinding.dart';
import 'package:snapchat_ui/network/GetXNetworkManager.dart';

void main() {
  runApp(Appba());
}

class Appba extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //Initiate Bindings we have created with GETX
      initialBinding: NetworkBinding() ,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  // create an instance
  final GetXNetworkManager _networkManager = Get.find<GetXNetworkManager>();


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff23232E),
      title: GetBuilder<GetXNetworkManager>(builder: (builder)=>
          Text((_networkManager.connectionType == 0 )? 'Offline Mode Enabled' : (_networkManager.connectionType == 1) ? 'Offline Mode Disabled' : 'Offline Mode Disabled',style: TextStyle(fontSize: 34,fontFamily: 'Bebas',letterSpacing: 2,color: Colors.white)),
    ));
  }
}