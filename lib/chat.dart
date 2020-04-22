import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'models/chat-moddel.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(dummyData[index].avatarUrl),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      dummyData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      dummyData[index].time,
                      style: TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text(
                    dummyData[index].message,
                    style: TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ),
              )
            ],
          );
        },
        itemCount: dummyData.length);
  }
}
