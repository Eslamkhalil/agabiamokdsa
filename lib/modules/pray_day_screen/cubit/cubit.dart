
import 'package:agabiamokdsa/modules/pray_day_screen/buttom_nav_bar/bible/bible_pray.dart';
import 'package:agabiamokdsa/modules/pray_day_screen/buttom_nav_bar/end_pray/end_pray.dart';
import 'package:agabiamokdsa/modules/pray_day_screen/buttom_nav_bar/mzamar/mzmar.dart';
import 'package:agabiamokdsa/modules/pray_day_screen/buttom_nav_bar/start_pray/start_pray.dart';
import 'package:agabiamokdsa/modules/pray_day_screen/cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PrayDayCubit extends Cubit<PrayDayStates> {
  PrayDayCubit() : super(InitialPrayDayState());



  static PrayDayCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> bottomScreens =[
    StartPray(),
    MzmarPray(),
    BiblePray(),
    EndPray(),
  ];


  void changeBottomNavScreen(int index){
    currentIndex = index;
    emit(ChangeBottomNavigationState());
  }

}