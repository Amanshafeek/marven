import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapchat_ui/chatpage/chat_users.dart';
import 'package:snapchat_ui/chatpage/chat.dart';
import 'package:snapchat_ui/appbar.dart';

class ChatPage extends StatefulWidget{
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Jane Russel", status: "Awesome Setup", image: "images/userImage1.jpeg", time: "Now"),
    ChatUsers(name: "Glady's Murphy", status: "That's Great", image: "images/userImage2.jpeg", time: "Yesterday"),
    ChatUsers(name: "Jorge Henry", status: "Hey where are you?", image: "images/userImage3.jpeg", time: "31 Mar"),
    ChatUsers(name: "Philip Fox", status: "Busy! Call me in 20 mins", image: "images/userImage4.jpeg", time: "28 Mar"),
    ChatUsers(name: "Debra Hawkins", status: "Thankyou, It's awesome", image: "images/userImage5.jpeg", time: "23 Mar"),
    ChatUsers(name: "Jacob Pena", status: "will update you in evening", image: "images/userImage6.jpeg", time: "17 Mar"),
    ChatUsers(name: "Andrey Jones", status: "Can you please share the file?", image: "images/userImage7.jpeg", time: "24 Feb"),
    ChatUsers(name: "John Wick", status: "How are you?", image: "images/userImage8.jpeg", time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff23232E),
      appBar:CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade400,size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ChatUsersList(
                  text: chatUsers[index].name,
                  secondaryText: chatUsers[index].status,
                  image: chatUsers[index].image,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ],
          
        ),
      ),
    );
  }
}