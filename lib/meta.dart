import 'package:flutter/cupertino.dart';
import 'package:hazrat_khadije/Download.dart';
import 'package:hazrat_khadije/Source.dart';

class Meta{
  Download _download;
  Source _source;
  var _redirect;
  String _thumb;
  List _gallery;

  Meta(
      this._download, this._source, this._redirect, this._thumb, this._gallery);

  List get gallery => _gallery;

  String get thumb => _thumb;

  get redirect => _redirect;

  Source get source => _source;

  Download get download => _download;
}