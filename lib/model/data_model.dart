class DataModel{
  String? name;
  String? name_ar;
  String? name_en;
  String? place_id;
  String? type;
  int? exist;
  String? desc;
  String? marker;
  String? distance2KM;
  int? num_comment;
  int? like_num;
  double? lng;
  double? lat;
  int? img_num;
  String? img_path;


  DataModel({
    required this.name,
    required this.name_ar,
    required this.name_en,
    required this.place_id,
    required this.type,
    required this.exist,
    required this.desc,
    required this.marker,
    required this.distance2KM,
    required this.num_comment,
    required this.like_num,
    required this.lng,
    required this.lat,
    required this.img_num,
    required this.img_path
  });


  factory DataModel.fromJson(Map<String , dynamic> json){
    return DataModel(
        name: json["name"],
        name_ar: json["name_ar"],
        name_en: json["name_en"],
        place_id:  json["place_id"] ,
        type: json["type"] ,
        exist:  json["exist"],
        desc:  json["desc"],
        marker:  json["marker"],
        lng:  json["lng"] ,
      lat:  json["lat"] ,
      distance2KM:  json["distance2KM"] ,
      num_comment:  json["num_comment"] ,
      like_num:  json["like_num"] ,
      img_path:  json["img_path"] ,
      img_num:  json["img_num"] ,

    );

  }

}
