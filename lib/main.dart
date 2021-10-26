import 'package:flutter/material.dart';
import './dictionary.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Spanish List',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final MemCard mem = new MemCard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Spanish vocabulary builder"),
      ),
      body: Column(
        children: [
          MemCard(),
          Row(
              children: [
                RaisedButton(onPressed: () => mem.flip(), child: Text("Flip")),
                RaisedButton(onPressed: null, child: Text("Next"))]
          )
      ]
      )

    );
  }
}
