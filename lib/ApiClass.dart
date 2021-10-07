import 'dart:convert';
import 'package:hazrat_khadije/product.dart';
import 'package:flutter/material.dart';
import 'package:hazrat_khadije/product.dart';
import 'package:http/http.dart' as http;


class ApiClass extends StatefulWidget {
  const ApiClass({Key? key}) : super(key: key);

  @override
  _ApiClassState createState() => _ApiClassState();
}

class _ApiClassState extends State<ApiClass> {

  List<Product> _Items=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchItems();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(5),
        child: GridView.count(
          crossAxisSpacing: 7,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: List.generate(
            _Items.length,
                (int position){
              return generateItem(_Items[position],context);
            },
          ),
        ),
      ),
    );
  }


  void fetchItems() async {

    var url="http://welearnacademy.ir/flutter/products_list.json";
    var response = await http.get(Uri.parse(url));
    // http.post(Uri.parse(url));
    setState(() {
      var productJson = json.decode(utf8.decode(response.bodyBytes));
      for (var i in productJson) {
        var productItem = Product(
            i ['id'],
            i ['language'],
            i ['subdomain'],
            i ['title'],
            i ['seotitle'],
            i ['slug'],
            i ['slug_raw'],
            i ['parent_url'],
            i ['url'],
            i ['link'],
            i ['content'],
          i ['meta'],
          i ['file'],
          i ['type'],
          i ['subtype'],
          i ['special'],
          i ['comment'],
          i ['count'],
          i ['order'],
          i ['status'],
          i ['parent'],
          i ['user_id'],
          i ['publishdate'],
          i ['datemodified'],
          i ['datecreated'],
          i ['subtitle'],
          i ['excerpt'],
        );
        _Items.add(productItem);
      }
    }
    );
  }
  Card generateItem(Product product,context){
    return Card(
      child: InkWell(
        onTap: (){
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) =>
          // )
          // );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Container(
              //   width: 100,
              //   height: 100,
              //   child: Image.network(
              //       product.link),
              // ),
              // Text(
              //   product.price,
              //   style: TextStyle(
              //     fontFamily: "Vazir",
              //     color: Colors.pink,
              //     fontSize: 15,
              //   ),
              // ),
              Text(
                product.content,
                style: TextStyle(
                  fontFamily: "Vazir",
                  color: Colors.black45,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
              Radius.circular(30)
          )
      ),
      elevation: 10,
    );
  }
}

