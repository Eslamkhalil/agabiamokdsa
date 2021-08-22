import 'package:agabiamokdsa/modules/home_screen/home_model.dart';
import 'package:agabiamokdsa/shared/cubit/cubit.dart';
import 'package:agabiamokdsa/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrayDayScreen extends StatelessWidget {
  final HomeModel model;

  PrayDayScreen(this.model);

  //const PrayDayScreen({Key? key}) : super(key: key);;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PrayDayCubit, PrayDayStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = PrayDayCubit.get(context);
          cubit.model=model;
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            title: Text('pray'),
          ),
          //Directionality(textDirection: TextDirection.rtl, child: widget)
          bottomNavigationBar: Directionality(textDirection: TextDirection.rtl,child: Container(
            margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 16.0),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: BottomNavigationBar(

              onTap: (index) {
                cubit.changeBottomNavScreen(index);
              },
              currentIndex: cubit.currentIndex,
              selectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.black54,
              backgroundColor: Colors.transparent,
              elevation: 0,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.pray), label: 'مقدمة الصلوات'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.multitrack_audio_sharp), label: 'المزامير'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.bible), label: 'الانجيل والقطع'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.prayingHands), label: 'ختام الصلوات'),
              ],
            ),
          ),),
          body: cubit.bottomScreens[cubit.currentIndex],
        );
      },
    );
  }
}
