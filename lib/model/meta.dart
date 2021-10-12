import 'package:flutter/cupertino.dart';
import 'package:hazrat_khadije/model/Download.dart';
import 'package:hazrat_khadije/model/Source.dart';

class Meta{
  Download download;
  Source source;
  String redirect;
  String thumb;
  List gallery;

  Meta({
    this.download,
    this.source,
    this.redirect,
    this.thumb,
    this.gallery});

  factory Meta.fromJson(Map<String , dynamic> data){
    return Meta(
        download: Download.fromJson(data["download"]),
        source : Source.fromJson(data["source"]),
        redirect : data["redirect"],
        thumb : data["thumb"],
        gallery : data["gallery"],
    );
  }

  Map<String,dynamic> toJson(){
    return {
      "download" : download.toJson(),
      "source" : source.toJson(),
      "redirect" : redirect,
      "thumb" : thumb,
      "gallery" : gallery,
    };
  }
}