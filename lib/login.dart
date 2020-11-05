import 'package:flutter/material.dart';
import 'main.dart';

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Design widgets.
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: const Color(0xFFff6347),
/*        leading: new IconButton(
          icon: new Icon(
            Icons.menu,
            color: Colors.white,
          ),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),*/
        title: new Text('Login Screen'),
/*        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search, color: Colors.white),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],*/
      ),
      // body is the majority of the screen.
      body: new LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildInputField(context, "Enter your Name", Icons.person, false),
          buildInputField(context, "Enter your Roll Number",
              Icons.coronavirus_outlined, false),
          new Container(
              margin: const EdgeInsets.only(top: 26.0),
              child: new RaisedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
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

/**
 * create InputField
 */
Widget buildInputField(
    BuildContext context, String hint, IconData iconData, bool isPassword) {
  return new Container(
      decoration: new BoxDecoration(border: new Border.all(color: Colors.grey)),
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(top: 16.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Icon(
            iconData,
            color: const Color(0xFFff6347),
          ),
          new Flexible(
              child: new TextField(
                style: Theme.of(context).textTheme.body1,
                decoration: new InputDecoration.collapsed(hintText: hint),
                obscureText: isPassword,
              )),
        ],
      ));
}

