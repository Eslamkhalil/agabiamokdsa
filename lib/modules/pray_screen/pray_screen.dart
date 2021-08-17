import 'package:agabiamokdsa/modules/home_screen/pray_model.dart';
import 'package:flutter/material.dart';

class PrayScreen extends StatelessWidget {
  // const PrayScreen({Key? key}) : super(key: key);
  final PrayModel model;

  PrayScreen({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            model.title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  model.title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      fontSize: 30.0),
                ),
              ),
            ),
            Text(
              model.body,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.1,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
