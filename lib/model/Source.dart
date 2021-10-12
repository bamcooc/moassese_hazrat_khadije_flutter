class Source{
  String title;
  String url;

  Source({this.title,this.url});


  factory Source.fromJson(Map<String,dynamic> data){
    return Source(
        title: data["title"],
        url: data["url"],
    );
  }

  Map<String,dynamic> toJson(){
    return {
      "title" : title,
      "url" : url,
    };
  }

}