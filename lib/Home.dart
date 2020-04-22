import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappui/camera.dart';
import 'package:whatsappui/call.dart';
import 'package:whatsappui/status.dart';
import 'package:whatsappui/chat.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
@override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(text: 'CHATS'),
            Tab(text: 'STATUS'),
            Tab(text: 'CALLS')
          ],

        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
           CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message),
        onPressed: (){
          print('open chat');
        },
      ),
    );
  }
}
