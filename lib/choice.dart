import 'package:flutter/material.dart';
import 'main.dart';

class Choice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: const Color(0xFFff6347),
         /* leading: new IconButton(
          icon: new Icon(
            Icons.menu,
            color: Colors.white,
          ),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),*/
        title: new Text('HOME'),

      ),
      // body is the majority of the screen.
      body: new Container(
      child: Center(
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: RaisedButton(
                  child: Text("Time Table"),
                  onPressed:  () {

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  },
                ),
              ),
              Center(
                child: RaisedButton(
                  child: Text("Subject"),
                  onPressed: () => null,
                ),
              )
            ]
        ),
      ),




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
    ));
  }
}


