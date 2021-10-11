import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:hazrat_khadije/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' as rootBundle;
import 'package:hazrat_khadije/MainProduct.dart';
import 'dart:async';
import 'dart:core';

import 'File.dart';
import 'meta.dart';


class ApiScreen extends StatefulWidget {
  const ApiScreen({Key key}) : super(key: key);

  @override
  _ApiScreenState createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  String url = 'https://khadije.com/fa/api/v6/posts';
  List data;

  Future<String> makeRequest() async{
    var response = await http.get(Uri.parse(url));
    setState(() {
      var extradata = json.decode(utf8.decode(response.bodyBytes));
      data = extradata["result"];
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            // crossAxisSpacing: 20,
            // mainAxisSpacing: 20
        ),
        itemCount: data == null? 0 : data.length,
        itemBuilder: (BuildContext context, i){
          return GridTile(
            // header: new Text(data[i]["title"]),
            child: Card(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: new NetworkImage(data[i]["file"]["main"]),
                    ),

                    Text(data[i]["title"],style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,),
                    // Text(data[i]["excerpt"]),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(15)
                  )
              ),
              elevation: 0,
            )
            // footer: new Text(data[i]["excerpt"]),
            // title: new Text(data[i]["title"]),
            // subtitle: new Text(data[i]["excerpt"]),
            // leading: new CircleAvatar(
            //   backgroundImage:
            //   new NetworkImage(data[i]["file"]["main"]),
            // ),
          );
        },
      ),
    );
  }


  // Card generateItem(Product product,context){
  //   return Card(
  //     child: InkWell(
  //       onTap: (){
  //         // Navigator.of(context).push(MaterialPageRoute(
  //         //     builder: (context) => DescriptionPage(product)
  //         // ));
  //       },
  //       child: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: <Widget>[
  //             Container(
  //               width: 100,
  //               height: 100,
  //               child: Image.network(
  //                   data[i]["file"]["main"]
  //                   ),
  //             ),
  //             Text(
  //               ,
  //               style: TextStyle(
  //                 fontFamily: "Vazir",
  //                 color: Colors.pink,
  //                 fontSize: 15,
  //               ),
  //             ),
  //             Text(
  //               ,
  //               style: TextStyle(
  //                 fontFamily: "Vazir",
  //                 color: Colors.black45,
  //                 fontSize: 15,
  //               ),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.all(
  //             Radius.circular(30)
  //         )
  //     ),
  //     elevation: 10,
  //   );
  // }

}
