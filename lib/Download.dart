import 'package:flutter/cupertino.dart';

class Download{
  String title;
  String url;
  bool target;
  Color color;

  Download({this.title,this.url,this.target,this.color});

  factory Download.fromJson(Map<String,dynamic> data){
    return Download(
        title: data["title"],
        url: data["url"],
        target: data["target"],
        color: data["color"]
    );
  }

  Map<String,dynamic> toJson(){
    return {
      "title" : title,
      "url" : url,
      "target" : target,
      "color" : color,
    };
  }

}