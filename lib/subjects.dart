import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:time_table/login.dart';
import 'choice.dart';

class Sub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: const Color(0xFFff6347),
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          tooltip: 'Navigation menu',
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Choice()),
            );
          },
        ),
        title: new Text('SUBJECTS'),
      ),
    );
    /*Center(
          //margin: const EdgeInsets.only(top: 26.0),
          child: new RaisedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
            child: new Text(
              'Time Table',
              style: new TextStyle(color: const Color(0xFFff6347)),
            ),
          )),*/
  }
}
/*class Record {
  final String name;
  final int time;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),
        assert(map['time'] != null),
        name = map['name'],
        time = map['time'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$time>";
}*/
