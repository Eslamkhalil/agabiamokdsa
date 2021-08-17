class HomeModel {
  String image;
  String title;
  String prayDescription;
 List<StartPrayModel> startPrayModel;
  MzamarPrayModel mzamarPrayModel;
  BiblePrayModel biblePrayModel;
  EndPrayModel endPrayModel;

  HomeModel(
      {this.image,
      this.title,
      this.prayDescription,
      this.startPrayModel,
      this.mzamarPrayModel,
      this.biblePrayModel,
      this.endPrayModel});
}

class StartPrayModel {
  String start;
  String title;
  String body;

  StartPrayModel({this.start, this.title, this.body});
}

class MzamarPrayModel {
  String start;
  String title;
  String body;

  MzamarPrayModel(this.start, this.title, this.body);
}

class BiblePrayModel {
  String title;
  String body;

  BiblePrayModel(this.title, this.body);
}

class EndPrayModel {
  String title;
  String body;

  EndPrayModel(this.title, this.body);
}
