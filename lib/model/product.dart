import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hazrat_khadije/model/File.dart';
import 'package:hazrat_khadije/model/meta.dart';


class Product{
  int id;
  String language;
  String subdomain;
  String title;
  String seotitle;
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
  String count;
  String order;
  String status;
  String parent;
  String user_id;
  String publishdate;
  String datemodified;
  String datecreated;
  String subtitle;
  String excerpt;


  Product({
      this.id,
      this.language,
      this.subdomain,
      this.title,
      this.seotitle,
      this.slug,
      this.slug_raw,
      this.parent_url,
      this.url,
      this.link,
      this.content,
      this.meta,
      this.file,
      this.type,
      this.subtype,
      this.special,
      this.comment,
      this.count,
      this.order,
      this.status,
      this.parent,
      this.user_id,
      this.publishdate,
      this.datemodified,
      this.datecreated,
      this.subtitle,
      this.excerpt});


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
    };
  }
}