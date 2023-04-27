import 'dart:io';
import 'dart:convert';

const String FILEPATH = "package:\\JSON Data\\data.json";
const JsonDecoder decoder = JsonDecoder();

class PLACE {
  String? name;
  String? geo_location;
  String? phone;
  String? url;
  String? place_id;


  //{ } - implies named arguments
  PLACE({this.name,
        this.geo_location,
        this.phone,
        this.url,
        this.place_id});

  @override
  String toString() {
    return "{name:$name,"
            "geo_location:$geo_location,"
            "phone:$phone,"
            "url:$url,"
            "place_id$place_id}";
  }
}

void main() {
  List<PLACE>? places;
  //synchronously read file contents
  var jsonString = File(FILEPATH).readAsStringSync();
  //print(jsonString);
  //pass the read string to JsonDecoder class to convert into corresponding Objects
  final Map<String, dynamic> jsonmap = decoder.convert(jsonString);

  //DataModel - key = "users", value = "ARRAY of Objects"
  var value = jsonmap["users"];
  if (value != null) {
    places = <PLACE>[];
    //Each item in value is of type::: _InternalLinkedHashMap<String, dynamic>
    value.forEach((item) => places?.add(new PLACE
        (name:item["name"],
        geo_location:item["geo_location"],
        phone:item["password"],url:item["url"],
        place_id:item["place_id"] )));
  }
  places?.forEach((element) => print(element));
}