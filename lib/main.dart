import 'package:flutter/material.dart';
import 'package:basic_audio/box.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Phrases',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Basic Phrases'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioPlayer();
  void onPressed(String path) async {
    await player.setSource(DeviceFileSource(path));
    await player.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Basic Phrases', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
      ),

      body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: <Widget>[
            Box(text: 'salut', onPressed: () => onPressed('res/basic_phrases/01.mp3')),
            Box(text: 'salut (germana)', onPressed: () => onPressed('res/basic_phrases/02.mp3')),
            Box(text: 'ma numesc', onPressed: () => onPressed('res/basic_phrases/03.mp3')),
            Box(text: 'ma numesc (germana)', onPressed: () => onPressed('res/basic_phrases/04.mp3')),
            Box(text: 'cum esti?', onPressed: () => onPressed('res/basic_phrases/05.mp3')),
            Box(text: 'cum esti? (germana)', onPressed: () => onPressed('res/basic_phrases/06.mp3')),
            Box(text: 'sunt bine', onPressed: () => onPressed('res/basic_phrases/07.mp3')),
            Box(text: 'sunt bine (germana)', onPressed: () => onPressed('res/basic_phrases/08.mp3')),
          ]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
