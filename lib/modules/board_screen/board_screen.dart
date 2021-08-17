import 'package:agabiamokdsa/modules/home_screen/home_screen.dart';
import 'package:agabiamokdsa/network/local/cache_helper.dart';
import 'package:agabiamokdsa/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'board_model.dart';

class BoardScreenPage extends StatefulWidget {
  @override
  _BoardScreenPageState createState() => _BoardScreenPageState();
}

class _BoardScreenPageState extends State<BoardScreenPage> {
  var boardController = PageController();

  bool isLast = false;
  final List<BoardingModel> boards = [
    BoardingModel(
      image: 'assets/images/board1.png',
      body:
          'تعلم كيفية اداء الصلاة بالطريقه الصحيحه والقراءات الازمة فى الصلاة ',
      title: 'باسم الروح الطاهرة',
    ),
    BoardingModel(
      image: 'assets/images/board2.png',
      body:
          'كيفيفة اداء الصلوات  فى جميع الاوقات للمساعدة فى الحياة العملية',
      title: 'الصلوات الاخرى ',
    ),
    BoardingModel(
      image: 'assets/images/board3.png',
      body: '  كيفية اداء صلوات السواعى فى جميع اوقاتها مع المزامير والتحليل الخاص بها ',
      title: 'صلوات السواعى وكيفية الصلاة',
    ),
  ];

  void onBoardingSaved() {
    CacheHelper.saveData(key: 'onBoarding', value: true).then((value) => {
          if (value)
            {
              navigateAndFinish(context: context, widget: HomePage()),
            }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: defaultTextButton(
          tap: onBoardingSaved,
          title: "تخطى ",
        ) ,
        actions: [

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: boardController,
                itemBuilder: (context, index) =>
                    buildBoardingItem(boards[index]),
                itemCount: boards.length,
                onPageChanged: (index) {
                  if (index == boards.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                FloatingActionButton(

                  onPressed: () {
                    if (isLast) {
                      onBoardingSaved();
                    } else {
                      boardController.nextPage(
                          duration: Duration(
                            milliseconds: 750,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn);
                    }
                  },
                  child: Icon(Icons.keyboard_arrow_right_outlined),
                ),

                Spacer(),
                SmoothPageIndicator(
                  controller: boardController,
                  count: boards.length,
                  effect: ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      spacing: 5.0,
                      dotHeight: 10.0,
                      dotWidth: 10.0,
                      expansionFactor: 4.0,
                      activeDotColor: Colors.deepOrange
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel model) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Image(
            image: AssetImage('${model.image}'),
            fit: BoxFit.contain,
          )),
          Text(
            '${model.title}',
            style: TextStyle(color: Colors.black ,fontWeight: FontWeight.bold, fontSize: 24.0),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            '${model.body}',
            style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ],
      );
}
