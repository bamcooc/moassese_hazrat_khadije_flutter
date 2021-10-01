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
      this._content);

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
}