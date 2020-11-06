import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:time_table/login.dart';
import 'choice.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Table',
      home: TutorialHome(),
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
  PageController controller = PageController(initialPage: 0);
  var currentPageValue = 0.0;
  int pageChanged = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: new Text('Time Table'),
      ),
      body: PageView.builder(
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            pageChanged = index;
          });
        },
        itemBuilder: (context, position) {
          return StreamBuilder<QuerySnapshot>(
            stream: Firestore.instance.collection('table').snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return LinearProgressIndicator();
              final NPtable =
                  snapshot.data.documents[pageChanged]['Test_array'];

              return ListView.builder(
                itemCount: NPtable.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: SizedBox(
                      width: 400,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FlatButton(
                          onPressed: () {},
                          color: Colors.white,
                          child: Text('${NPtable[index]}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 22.0)),
                        ),
                      ),
                    ),
                  );
                },
              );
              /*Column(
          children: [
            ListTile(

              title: Text(NPtable[0]),
              //trailing: Text(NPtable[0]),
              //trailing: Text(snapshot.data.documents[0]['Test_array[0]'].toString()),
              //onTap: () => print(record),
            ),
          ],

          //children: <Widget>[
          //Text(snapshot.data.documents[1]['name']),
          //Text(snapshot.data.documents[1]['time'].toString()),
          //],
        );*/
            },
          );
        },
        itemCount: 5,
      ),
      //body: _buildBody(context),
    );
  }
}

/* Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('table').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();
        final NPtable = snapshot.data.documents[0]['Test_array'];

        return  ListView.builder(
          itemCount: NPtable.length,
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
                    child: Text('${NPtable[index]}'),
                  ),
                ),
              ),
            );
          },
        );
        /*Column(
          children: [
            ListTile(

              title: Text(NPtable[0]),
              //trailing: Text(NPtable[0]),
              //trailing: Text(snapshot.data.documents[0]['Test_array[0]'].toString()),
              //onTap: () => print(record),
            ),
          ],

          //children: <Widget>[
          //Text(snapshot.data.documents[1]['name']),
          //Text(snapshot.data.documents[1]['time'].toString()),
          //],
        );*/
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

*/
