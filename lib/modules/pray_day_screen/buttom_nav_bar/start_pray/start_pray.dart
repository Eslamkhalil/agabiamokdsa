
import 'package:agabiamokdsa/modules/home_screen/home_model.dart';
import 'package:flutter/material.dart';

class StartPray extends StatelessWidget {
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
          SizedBox(height: 8.0,),
          buildPrayArticle(),
          SizedBox(height: 8.0,),
          buildPrayArticle(),
          SizedBox(height: 8.0,),
          buildPrayArticle(),
          SizedBox(height: 8.0,),
          buildPrayArticle(),
          SizedBox(height: 8.0,),
          buildPrayArticle(),
          SizedBox(height: 8.0,),
          buildPrayArticle(),

        ],
      ),
    );
  }
}
Widget buildPrayArticle({String title, String body,Color color =Colors.white,double fontSize = 20.0, }){
  return Column(
    children: [
      Center(child: Text(title,style: TextStyle(
        color: color,
        fontSize: fontSize,
        letterSpacing: 0.1,
        fontWeight: FontWeight.bold,
      ),)),
      Text(body,style: TextStyle(
        color: color,
        fontSize: fontSize,
        letterSpacing: 0.1,
        fontWeight: FontWeight.bold,
      ),),
    ],
  );
}
