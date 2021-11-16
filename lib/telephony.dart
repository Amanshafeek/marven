import 'dart:async';


import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() => runApp(MyApp());
/// Define App ID and Token
const APP_ID = '8fc87ddc8afd4a12b720918d8b5fb11d';
const Token = '<0068fc87ddc8afd4a12b720918d8b5fb11dIADtttZQMuG9nVWVR+oKXqaw+4AJzQMqCJHTmue17WP0fbABPTQAAAAAEABr21wCRPOQYQEAAQBR85Bh>';
// App class
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

// App state class
class _MyAppState extends State<MyApp> {
  bool _joined = false;
  int _remoteUid = 0;
  bool _switch = false;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Init the app
  Future<void> initPlatformState() async {
    // Get microphone permission
    await [Permission.microphone].request();

    // Create RTC client instance
    RtcEngineContext context = RtcEngineContext(APP_ID);
    var engine = await RtcEngine.createWithContext(context);
    // Define event handling logic
    engine.setEventHandler(RtcEngineEventHandler(
        joinChannelSuccess: (String channel, int uid, int elapsed) {
          print('joinChannelSuccess ${channel} ${uid}');
          setState(() {
            _joined = true;
          });
        }, userJoined: (int uid, int elapsed) {
      print('userJoined ${uid}');
      setState(() {
        _remoteUid = uid;
      });
    }, userOffline: (int uid, UserOfflineReason reason) {
      print('userOffline ${uid}');
      setState(() {
        _remoteUid = 0;
      });
    }));
    // Join channel with channel name as 123
    await engine.joinChannel(Token, '123', null, 0);
  }

  // Build chat UI
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agora Audio quickstart',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Agora Audio quickstart'),
        ),
        body: Center(
          child: Text('Please chat!'),
        ),
      ),
    );
  }

}
