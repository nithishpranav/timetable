import 'package:flutter/material.dart';
import 'dart:collection';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:time_table/tt.dart' as ttt;

void main() {
  runApp(MaterialApp(home: table()));
}

class table extends StatefulWidget {
  @override
  _tableState createState() => _tableState();
}

class _tableState extends State<table> {
  var dis = ttt.map[ttt.day];

  String _textString = 'Day 1';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Time Table'),
          backgroundColor: Colors.blueGrey[900],

          // bottom: TabBar(
          //   tabs: <Widget>[
          //     Tab(
          //       text: "Day1",
          //     ),
          //     Tab(
          //       text: "Day1",
          //     ),
          //     Tab(
          //       text: "Day1",
          //     ),
          //   ],
          // ),
        ),
        drawer: Drawer(

          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Center(
                    child: Text('Day',
                        style: TextStyle(fontSize: 20, color: Colors.white))),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                ),
              ),
              ListTile(
                title: Text('Day 1'),
                onTap: () {
                  _day1();
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Day 2'),
                onTap: () {
                  _day2();
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Day 3'),
                onTap: () {
                  _day3();
                  Navigator.pop(context); //closes the drawer
                },
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: dis.length,
          itemBuilder: (context, index) {
            return Center(
              child: SizedBox(
                width: 300,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {},
                    color: Colors.grey[600],
                    child: Text('${dis[index]}'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _day1() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      dis = ttt.map[1];
      _textString = 'Day 1';
    });
  }

  void _day2() {
    setState(() {
      dis = ttt.map[2];
      _textString = 'Day 2';
    });
  }

  void _day3() {
    setState(() {
      dis = ttt.map[3];
      _textString = 'Day 3';
    });
  }
}
