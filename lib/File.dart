class File{
  String main;
  String large;
  String normal;
  String thumb;

  File({this.main,this.large,this.normal,this.thumb});
  factory File.fromJson(Map<String,dynamic> data){
    return File(
        main: data["main"],
        large: data["large"],
        normal: data["normal"],
        thumb: data["thumb"]
    );
  }

  Map<String,dynamic> toJson(){
    return {
      "main" : main,
      "large" : large,
      "normal" : normal,
      "thumb" : thumb,
    };
  }
}