import 'package:agabiamokdsa/modules/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


import 'modules/board_screen/board_screen.dart';
import 'network/local/cache_helper.dart';



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  bool onboard = CacheHelper.getData(key: 'onBoarding');

  Widget widget;

  if(onboard != null){
    if(onboard){
      widget = HomePage();
    }else{
      widget = BoardScreenPage();
    }
  }else{
    widget = BoardScreenPage();
  }
  runApp(MyApp(widget));
}

class MyApp extends StatelessWidget {
 final Widget widget;
  MyApp(this.widget);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        accentColor: Colors.deepOrange,
        primaryColor: Colors.deepOrange,
        primarySwatch: Colors.deepOrange,
      ),
      home: Directionality(textDirection: TextDirection.rtl, child: widget),
    );
  }
}


