import 'package:flutter/material.dart';
import 'package:light_auto_mitsubishi/mitsu_lights.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: 'Light Auto Mitsubishi',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: '  '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get custFontSize => null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 6), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Warning_LightsPage(title: 'Log in Page',)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(widget.title),


      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          width: double.infinity,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              Image.asset(
                'assets/images/T.png',
                height: 150,
                width: 350,

                //colorBlendMode: BlendMode.darken,
                ),
              const Image(
                height: 150,
                width: 300,
                image: NetworkImage('https://thumbs.gfycat.com/FatalDirectChinesecrocodilelizard.webp'),
                //image: NetworkImage("https://media.tenor.com/YTaCRsvnVbwAAAAC/modelo.gif"),
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.fitWidth,
              ),
          const Image(
            height: 150,
            width: 300,
              image: NetworkImage('https://thumbs.gfycat.com/AptEthicalAustraliancattledog.webp'),
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.fitWidth,
              ),
              const Image(
                height: 150,
                width: 300,
                image: NetworkImage("https://www.drivespark.com/img/2016/12/20-1482243753-car-warning-lights-how-to-read-them.jpg"),
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.fitWidth,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
