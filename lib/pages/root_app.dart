import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:snapchat_ui/Community/screens/feed_screen.dart';
import 'package:snapchat_ui/pages/modes.dart';
import 'package:snapchat_ui/pages/Community.dart';
import 'package:snapchat_ui/pages/chat_page.dart';
import 'package:snapchat_ui/pages/call.dart';
import 'package:snapchat_ui/pages/stories_page.dart';
import 'package:snapchat_ui/theme/colors.dart';
import 'package:snapchat_ui/call/phonelogs_screen.dart';
import 'package:snapchat_ui/chatpage/chat_page.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  List<Widget> pages = [
    ChatPage(),
    PhonelogsScreen(),
    FeedScreen(),
    Modes(),
    SettingsPage(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),

    );
  }

  Widget getBody() {
    // return pages.elementAt(pageIndex);
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List iconItems = [
      Feather.map_pin,
      MaterialIcons.chat_bubble_outline,
      Feather.camera,
      Feather.users,
      Feather.activity
    ];
    List textItems = ["chat", "Call", "Community", "Modes", "Profile"];
    List colorItems = [
      green,
      blue,
      primary,
      purple,
      primary,
    ];
    return Container(


      height: 58,
      width: 40,
      decoration: BoxDecoration(

        color: Color(0xff23232E),
      ),
      child: Padding(
        padding:
        const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(textItems.length, (index) {
            return InkWell(
                onTap: () {
                  selectedTab(index);
                },
                child: Column(
                  children: [
                    Icon(iconItems[index],
                        size: 20,
                        color: pageIndex == index
                            ? colorItems[index]
                            : Colors.white.withOpacity(0.5)),


                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      textItems[index],
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: pageIndex == index
                              ? Colors.white
                              : Colors.white.withOpacity(0.5)),
                    )
                  ],
                ));
          }),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}