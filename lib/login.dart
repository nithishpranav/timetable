import 'package:flutter/material.dart';
import 'package:time_table/choice.dart';
import 'main.dart';

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: const Color(0xFFff6347),
        title: new Text('Login Screen'),
      ),
      body: new LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final myController = TextEditingController();
  var name = String;

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFormField(
              //controller: myController,
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter Your Name',
                /*border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                          ),
                        ),*/
              ),
              onSaved: (String value) {},
              validator: (String value) {
                return "done";
              }),
          TextFormField(
              //controller: myController,
              decoration: const InputDecoration(
                icon: Icon(Icons.reduce_capacity_sharp),
                hintText: 'Enter Your Roll Number',
                /*border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                          ),
                        ),*/
              ),
              onSaved: (String value) {},
              validator: (String value) {
                return "Noted";
              }),
          new Container(
              margin: const EdgeInsets.only(top: 26.0),
              child: new RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Choice()),
                  );
                },
                child: new Text(
                  'Proceed',
                  style: new TextStyle(color: const Color(0xFFff6347)),
                ),
              ))
        ],
      ),
    );
  }
}
