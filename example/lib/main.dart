import 'package:flutter/material.dart';

import 'package:flutter_pip/flutter_pip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter PIP (Android only)'),
        ),
        body: new Center(
          child: new RaisedButton(
            child: new Text("Enter Picture-in-Picture mode"),
            onPressed: FlutterPIP.enterPictureInPictureMode,
          ),
        ),
      ),
    );
  }
}
