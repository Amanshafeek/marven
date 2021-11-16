import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:snapchat_ui/chatpage/chat_detail_page.dart';
import 'package:snapchat_ui/chatpage/chat_users.dart';

class ChatUsersList extends StatefulWidget {
  String text;
  String secondaryText;
  String image;
  String time;
  bool isMessageRead;
  ChatUsersList(
      {@required this.text,
      @required this.secondaryText,
      @required this.image,
      @required this.time,
      @required this.isMessageRead});
  @override
  _ChatUsersListState createState() => _ChatUsersListState();
}

class _ChatUsersListState extends State<ChatUsersList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatDetailPage(ChatUsers(
              name: widget.text,
              status: widget.secondaryText,
              image: widget.image,
              time: widget.time));
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    height: 67,
                    width: 67,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      shape: BoxShape.rectangle
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.text,style: TextStyle(fontSize: 18),),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            widget.secondaryText,
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              widget.time,
              style: TextStyle(
                  fontSize: 12,
                  color: widget.isMessageRead
                      ? Colors.pink
                      : Colors.grey.shade500),
            ),
          ],
        ),
      ),
    );
  }
}
