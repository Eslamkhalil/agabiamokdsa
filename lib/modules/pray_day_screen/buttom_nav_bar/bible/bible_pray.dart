
import 'package:flutter/material.dart';

class BiblePray extends StatelessWidget {
 // const EndPray({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text('Bible pray',style: TextStyle(
              fontSize: 40.0,
              color: Colors.white
            ),),
          ),

        ],
      ),
    );
  }
}


