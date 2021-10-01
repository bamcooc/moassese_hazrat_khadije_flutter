import 'package:flutter/cupertino.dart';

class Product{
  int _id;
  String _language;
  var _subdomain;
  String _title;
  var _seotitle;
  String _slug;
  String _slug_raw;
  List _parent_url;
  String _url;
  String _link;
  String _content;
  Widget _meta;
  Widget _file;
  String _type;
  String _subtype;
  String _special;
  StreamBuilder _comment;
  var _count;
  var _order;
  String _status;
  var _parent;
  String _user_id;
  String _publishdate;
  String _datemodified;
  String _datecreated;
  var _subtitle;
  String _excerpt;


  Product(
      this._id,
      this._language,
      this._subdomain,
      this._title,
      this._seotitle,
      this._slug,
      this._slug_raw,
      this._parent_url,
      this._url,
      this._link,
      this._content,
      this._meta,
      this._file,
      this._type,
      this._subtype,
      this._special,
      this._comment,
      this._count,
      this._order,
      this._status,
      this._parent,
      this._user_id,
      this._publishdate,
      this._datemodified,
      this._datecreated,
      this._subtitle,
      this._excerpt);

  String get content => _content;

  String get link => _link;

  String get url => _url;

  List get parent_url => _parent_url;

  String get slug_raw => _slug_raw;

  String get slug => _slug;

  get seotitle => _seotitle;

  String get title => _title;

  get subdomain => _subdomain;

  String get language => _language;

  int get id => _id;

  String get excerpt => _excerpt;

  get subtitle => _subtitle;

  String get datecreated => _datecreated;

  String get datemodified => _datemodified;

  String get publishdate => _publishdate;

  String get user_id => _user_id;

  get parent => _parent;

  String get status => _status;

  get order => _order;

  get count => _count;

  StreamBuilder get comment => _comment;

  String get special => _special;

  String get subtype => _subtype;

  String get type => _type;

  Widget get file => _file;

  Widget get meta => _meta;
}