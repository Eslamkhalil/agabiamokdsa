import 'package:agabiamokdsa/modules/home_screen/home_model.dart';
import 'package:agabiamokdsa/modules/pray_day_screen/pray_day_screen.dart';
import 'package:agabiamokdsa/shared/components/components.dart';

import 'package:flutter/material.dart';

class BeforePray extends StatelessWidget {
  // const BeforePray({Key? key}) : super(key: key);
  final HomeModel model;

  BeforePray({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildListPreyItem(model,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.5),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  model.prayDescription ?? '',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.1,
                  ),
                ),
              ),
              defaultButton(
                onTap: () =>
                    navigateTo(context: context, widget: PrayDayScreen(model)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
