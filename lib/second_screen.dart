import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioPlayer _audioPlayer = AudioPlayer();

  void _playSoundIntro() async {
    _audioPlayer.play("assets/hi.aac");
  }

  @override
  Widget build(BuildContext context) {
    final _button1 = FlatButton(
      onPressed: _playSoundIntro,
      padding: EdgeInsets.all(5.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/nadika.png'), fit: BoxFit.cover),
            shape: BoxShape.circle),
      ),
    );

    var _buttons = <Widget>[_button1];

    return MaterialApp(
        title: 'Profile Kresna Andika',
        theme: ThemeData(primarySwatch: Colors.grey),
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              title: Text(
                "Developer Info",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              )),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/screen.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _buttons,
                ),
                Column(
                  children: [

                    Text('Kresna Andika Aprianto',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontFamily: 'RobotoMono')),
                    Text('A018050',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontFamily: 'RobotoMono')),

                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
