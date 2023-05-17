import 'package:flutter/material.dart';

class onePage extends StatefulWidget {
  const onePage({super.key, required this.title});

  final String title;

  @override
  _onePageState createState() => _onePageState();
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Light Auto Mitsubishi',
      theme: ThemeData(

      ),
      home: const onePage(title: 'Light Auto Mitsubishi'),
    );
  }
}

class _onePageState extends State<onePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Image one'),
        centerTitle: true,
        //automaticallyImplyLeading: false,
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
