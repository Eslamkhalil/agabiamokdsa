import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _count = 0;
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MaterialButton(
                  child: Text("Using Email"),
                  onPressed: () {
                    setState(() {
                      _count = 1;
                    });
                    print(_count);
                  }),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    _count = 2;
                  });
                },
                child: Text("Using Phone"),
              ),
              MaterialButton(child: Text("Go back to home"), onPressed: () {
                setState(() {
                  _count = 3;
                });
              }),
              createWidget(_count),
            ],
          ),
        ),
      ),
    );
  }

  Widget createWidget(int count) {
    print("inside create");
    if (count == 0) {
      print(count);
      return new Text("Select an option");
    } else if (count == 1) {
      return new Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(
                bottom: 30.0,
              ),
              child: Text(
                "LOGIN",
                textAlign: TextAlign.center,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Email",
                labelText: "Email",
              ),
              onChanged: (value) {
                _email = value;
              },
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter Password", labelText: "Password"),
              onChanged: (value) {
                _password = value;
              },
            ),
            Row(
              children: [
                TextButton(onPressed: () {}, child: Text("Create account")),
                TextButton(onPressed: () {}, child: Text("Login")),
              ],
            ),
          ],
        ),
      );
    }
    if (count == 2) {
      return Container(
        width: 200,
        height: 200,
        color: Colors.red,
      );
    }
    if (count == 3) {
      return Container(
        width: 200,
        height: 200,
        color: Colors.amberAccent,
      );
    }
    return Container();
  }
}
