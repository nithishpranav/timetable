import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Table',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Time Table'),backgroundColor: Colors.blueGrey[700]),
      backgroundColor: Colors.white70,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('table').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return Column(
          children: [
            ListTile(
              title: Text(snapshot.data.documents[1]['name']),
              trailing: Text(snapshot.data.documents[1]['time'].toString()),
              //onTap: () => print(record),
            ),
          ],

          //children: <Widget>[
          //Text(snapshot.data.documents[1]['name']),
          //Text(snapshot.data.documents[1]['time'].toString()),
          //],
        );
      },
    );
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
