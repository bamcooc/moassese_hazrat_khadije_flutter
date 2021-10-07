import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hazrat_khadije/File.dart';
import 'package:hazrat_khadije/meta.dart';


class Product{
  int id;
  String language;
  var subdomain;
  String title;
  var seotitle;
  String slug;
  String slug_raw;
  List parent_url;
  String url;
  String link;
  String content;
  Meta meta;
  File file;
  String type;
  String subtype;
  String special;
  StreamBuilder comment;
  var count;
  var order;
  String status;
  var parent;
  String user_id;
  String publishdate;
  String datemodified;
  String datecreated;
  var subtitle;
  String excerpt;


  Product({
      required this.id,
      required this.language,
      this.subdomain,
      required this.title,
      this.seotitle,
      required this.slug,
      required this.slug_raw,
      required this.parent_url,
      required this.url,
      required this.link,
      required this.content,
      required this.meta,
      required this.file,
      required this.type,
      required this.subtype,
      required this.special,
      required this.comment,
      this.count,
      this.order,
      required this.status,
      this.parent,
      required this.user_id,
      required this.publishdate,
      required this.datemodified,
      required this.datecreated,
      this.subtitle,
      required this.excerpt});


  factory Product.fromJson(Map<String, dynamic> data){
    return Product(
        id: data["id"],
        language: data["language"],
        subdomain: data["subdomain"],
        title: data["title"],
        seotitle: data["seotitle"],
        slug: data["slug"],
        slug_raw: data["slug_raw"],
        parent_url: data["parent_url"],
        url: data["url"],
        link: data["link"],
        content: data["content"],
        meta: Meta.fromJson(data["meta"]),
        file: File.fromJson(data["file"]),
        type: data["type"],
        subtype: data["subtype"],
        special: data["special"],
        comment: data["comment"],
        count: data["count"],
        order: data["order"],
        status: data["status"],
        parent: data["parent"],
        user_id: data["user_id"],
        publishdate: data["publishdate"],
        datemodified: data["datemodified"],
        datecreated: data["datecreated"],
        subtitle: data["subtitle"],
        excerpt: data["excerpt"],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      "id" : id,
      "language" : language,
      "subdomain" : subdomain,
      "title" : title,
      "seotitle" : seotitle,
      "slug" : slug,
      "slug_raw" : slug_raw,
      "parent_url" : parent_url,
      "url" : url,
      "link" : link,
      "content" : content,
      "meta" : meta.toJson(),
      "file" : file.toJson(),
      "type" : type,
      "subtype" : subtype,
      "special" : special,
      "comment" : comment,
      "count" : count,
      "order" : order,
      "status" : status,
      "parent" : parent,
      "user_id" : user_id,
      "publishdate" : publishdate,
      "datemodified" : datemodified,
      "datecreated" : datecreated,
      "subtitle" : subtitle,
      "excerpt" : excerpt,

    }
  }
}