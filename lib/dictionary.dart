import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:math';

class DictItem {

  final String es;
  final String rus;

  DictItem({
    required this.es,
    required this.rus});

}

class MemCard extends StatefulWidget {

  String val = "init";

  void flip() {
    val = "flip";
    print(val);
  }



  @override
  _MemCardState createState() => _MemCardState();
}

class _MemCardState extends State<MemCard> {


  final List<DictItem> _MyDictionary = [
    DictItem(
      es: 'quisquilloso',
      rus: 'дотошный',
    ),
    DictItem(
      es: 'rabieta',
      rus: 'истерика',
    ),
    DictItem(
      es: 'un lio',
      rus: 'беспорядок',
    ),

  ];


  int ind = 0;
  int pointer = 0;
  Random random = new Random();


  void flip_state() {
    (
        setState(() {
          if (ind == 0) {
     //       val = _MyDictionary[pointer].es;
          }
          else {
     //       val = _MyDictionary[pointer].rus;
          }
          ind = (ind==0) ? 1 : 0;
        })
        );
    }

  void next () {

    setState(() {
      pointer = random.nextInt(_MyDictionary.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        color: Colors.red,
        alignment: Alignment.center,
        height: 250,
        child: Text('AAA', style: TextStyle(color: Colors.white),),
    );
  }
}
