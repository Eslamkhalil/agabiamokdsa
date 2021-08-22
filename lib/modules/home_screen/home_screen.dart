import 'package:agabiamokdsa/modules/before_pray/before_pray_screen.dart';
import 'package:agabiamokdsa/modules/home_screen/pray_model.dart';
import 'package:agabiamokdsa/modules/pray_screen/pray_screen.dart';
import 'package:agabiamokdsa/modules/settings/settings_screen.dart';
import 'package:agabiamokdsa/shared/components/components.dart';
import 'package:agabiamokdsa/shared/cubit/cubit.dart';
import 'package:agabiamokdsa/shared/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PrayDayCubit, PrayDayStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = PrayDayCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text(
              'اجبيه قدسية',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.1,
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    navigateTo(context: context, widget: SettingsScreen());
                  },
                  icon: Icon(Icons.settings)),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'صلوات السواعى',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => buildListPreyItem(
                            cubit.homeData[index],
                            onTap: () => navigateTo(
                                context: context,
                                widget: BeforePray(
                                  model: cubit.homeData[index],
                                )),
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 8.0,
                          ),
                      itemCount: cubit.homeData.length),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey.withOpacity(0.2)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ExpansionTile(
                        title: Text(
                          'صلوات اخرى',
                          style: TextStyle(
                              fontSize: 28.0,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w700),
                        ),
                        children: [
                          ListView.separated(
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) =>
                                  buildListTail(cubit.prayData[index], context),
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 8.0,
                                  ),
                              itemCount: cubit.prayData.length),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                    child: Image(
                  image: AssetImage('assets/images/jausuback.png'),
                  height: MediaQuery.of(context).size.height / 2,
                )),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget buildListTail(PrayModel model, context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.8),
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    child: ListTile(
        onTap: () => navigateTo(
            context: context,
            widget: PrayScreen(
              model: model,
            )),
        title: Text(
          model.title,
          style: TextStyle(
              color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        leading: SizedBox(
          height: 64.0,
          width: 64.0, // fixed width and height
          child: Image(
              image: AssetImage(
            'assets/images/board1.png',
          )),
        )

        //Image(image: AssetImage('assets/images/icons/jesus.png',),width: 48,height: 48,fit: BoxFit.cover,),

        ),
  );
}
