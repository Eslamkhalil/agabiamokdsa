import 'package:agabiamokdsa/modules/pray_day_screen/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/states.dart';

class PrayDayScreen extends StatelessWidget {
  //const PrayDayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => PrayDayCubit(),
      child: BlocConsumer<PrayDayCubit, PrayDayStates>(
        listener: (context, state) {

        },
        builder: (context, state) {
          var cubit = PrayDayCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              centerTitle: true,
              title: Text('pray'),
            ),
            bottomNavigationBar: Container(
              margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: BottomNavigationBar(
                onTap:(index){
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
                      icon: Icon(Icons.home), label: 'مقدمة الصلوات'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'المزامير'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'الانجيل والقطع'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'ختام الصلوات'),

                ],
              ),
            ),
            body: cubit.bottomScreens[cubit.currentIndex],

          );
        },
      ),
    );
  }
}
