import 'package:flutter/material.dart';

import 'package:whatsappui/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      home: Home(),
    );
  }
}