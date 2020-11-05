import 'package:flutter/material.dart';
import 'dart:collection';
import 'package:time_table/tt.dart' as ttt;

void main() {
  runApp(MaterialApp(home: table()));

}

class table extends StatelessWidget {

  var dis = ttt.map[1];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Time Table"),
        backgroundColor: Colors.blueGrey[900],
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
    );
  }
}
