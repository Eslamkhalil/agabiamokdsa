import 'package:agabiamokdsa/modules/home_screen/home_model.dart';
import 'package:agabiamokdsa/shared/components/components.dart';
import 'package:agabiamokdsa/shared/cubit/cubit.dart';
import 'package:agabiamokdsa/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StartPray extends StatelessWidget {
  // const EndPray({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PrayDayCubit, PrayDayStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            textDirection: TextDirection.rtl,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    PrayDayCubit.get(context).model.startPrayModel[0].start,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => buildPrayArticle(
                      model: PrayDayCubit.get(context)
                          .model
                          .startPrayModel[index]),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 24.0,
                      ),
                  itemCount:
                      PrayDayCubit.get(context).model.startPrayModel.length),
            ],
          ),
        );
      },
    );
  }
}

