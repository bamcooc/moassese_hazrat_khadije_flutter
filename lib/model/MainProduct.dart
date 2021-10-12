import 'package:hazrat_khadije/product.dart';

class MainProduct{
  bool ok;
  List<Product> result;

  MainProduct({this.ok, this.result});


  factory MainProduct.fromJson(Map<String,dynamic> data){

    final List<Product> resultTemp = [];
    if (data['result'].length != 0){
      data['result'].forEach((item){
        resultTemp.add(Product.fromJson(item as Map<String,dynamic>),);
      });
    }
    return MainProduct(
      ok: data["ok"],
      result: resultTemp,
    );
  }
  Map<String,dynamic> toJson(){
    return {
      "ok" : ok,
      "result" : result,
    };
  }
}