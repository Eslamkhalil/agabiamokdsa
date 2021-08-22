
import 'package:agabiamokdsa/shared/components/components.dart';
import 'package:agabiamokdsa/shared/cubit/cubit.dart';
import 'package:agabiamokdsa/shared/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EndPray extends StatelessWidget {
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
                child: Container(),
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => buildPrayArticle(
                      model: PrayDayCubit.get(context)
                          .model
                          .endPrayModel[index]),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 24.0,
                  ),
                  itemCount:
                  PrayDayCubit.get(context).model.endPrayModel.length),
            ],
          ),
        );
      },
    );
  }
}
