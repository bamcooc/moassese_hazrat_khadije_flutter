import 'package:flutter/cupertino.dart';

class meta{
  Widget _download;
  Widget _source;
  var _redirect;
  String _thumb;
  List _gallery;

  meta(
      this._download, this._source, this._redirect, this._thumb, this._gallery);

  List get gallery => _gallery;

  String get thumb => _thumb;

  get redirect => _redirect;

  Widget get source => _source;

  Widget get download => _download;
}