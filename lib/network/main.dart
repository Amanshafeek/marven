import 'package:animated_text_kit/animated_text_kit.dart';
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
    return DefaultTabController(
      length: 2,
      child: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.import_contacts_sharp)),
          )
        ],
        toolbarHeight: 240,
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Container
              (height: 30,
                child: Tab(text: "Chats", )),
            Container(
              height: 30,
                child: Tab(text: "Chatrooms",)),
          ],
        ),
        backgroundColor: Color(0xff23232E),
        title: GetBuilder<GetXNetworkManager>(builder: (builder)=>
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child:
              Padding(
                padding: const EdgeInsets.only(right:66),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts:[ RotateAnimatedText((_networkManager.connectionType == 0 )? 'Offline Mode Enabled' :
                  (_networkManager.connectionType == 1) ? 'Offline Mode Disabled' : 'Offline Mode Disabled', textStyle:TextStyle(fontSize: 29,fontFamily: 'Bebas',letterSpacing: 2,color: Colors.white,)
                  ),
                ]),
              ),
            ),
      )),
    );
  }
}