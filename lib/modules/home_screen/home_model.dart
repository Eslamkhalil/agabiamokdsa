class HomeModel {
  String image;
  String title;
  String prayDescription;
  List<StartPrayModel> startPrayModel;
  List<MzamarPrayModel> mzamarPrayModel;
  List<BiblePrayModel> biblePrayModel;
  List<EndPrayModel> endPrayModel;

  HomeModel(
      {this.image,
      this.title,
      this.prayDescription,
      this.startPrayModel,
      this.mzamarPrayModel,
      this.biblePrayModel,
      this.endPrayModel});

  HomeModel.fromJson(Map<String,dynamic> json){
    image = json['image'];
    title = json['title'];
    prayDescription = json['prayDescription'];
    json['startPrayModel'].forEach((e){
      startPrayModel.add(StartPrayModel.fromJson(e));
    });
    json['mzamarPrayModel'].forEach((e){
      mzamarPrayModel.add(MzamarPrayModel.fromJson(e));
    });
    json['biblePrayModel'].forEach((e){
      biblePrayModel.add(BiblePrayModel.fromJson(e));
    });
    json['endPrayModel'].forEach((e){
      endPrayModel.add(EndPrayModel.fromJson(e));
    });
  }
}

class StartPrayModel {
  String start;
  String title;
  String body;

  StartPrayModel.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    title = json['title'];
    body = json['body'];
  }

  StartPrayModel({this.start, this.title, this.body});
}

class MzamarPrayModel {
  String start;
  String title;
  String body;

  MzamarPrayModel.fromJson(Map<String, dynamic> json) {
    start = json['start'];
    title = json['title'];
    body = json['body'];
  }

  MzamarPrayModel({this.start, this.title, this.body});
}

class BiblePrayModel {
  String title;
  String body;

  BiblePrayModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
  }

  BiblePrayModel({this.title, this.body});
}

class EndPrayModel {
  String title;
  String body;

  EndPrayModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
  }

  EndPrayModel({this.title, this.body});
}
