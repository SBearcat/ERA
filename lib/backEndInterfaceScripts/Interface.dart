import 'dart:convert';
import 'dart:io';
import 'dart:async' show Future;
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class Interface {
  static final Interface _instance = Interface._internal();

  static final List<Place> places = [];



  factory Interface() {
    return _instance;
  }


  Interface._internal()
  {
    _initializeList();
  }

  // Open currentData.json
  Future<Map<String, dynamic>> _openFile() async
  {
    Directory d = await getApplicationSupportDirectory();
    String dataFilePath = d.path;
    File file = File(dataFilePath + "/currentData.json");
    var jsonText = await file.readAsString();
    //var jsonText = await rootBundle.loadString('assets/currentData.json');
    Map<String, dynamic> rawData;
    rawData = json.decode(jsonText);
    return rawData;
  }

  //Create list of place objects from json objects
  void _initializeList() async
  {
    Map<String, dynamic> data = await _openFile();
    for(Map<String,dynamic> value in data.values) {
      Place place = Place();
      for(MapEntry<String,dynamic> m in value.entries) {
        switch(m.key) {
          case "name":
            place.name = m.value;
            break;
          case "lat":
            place.lat = double.parse(m.value);
            break;
          case "long":
            place.long = double.parse(m.value);
            break;
          case "types":
            place.types = m.value;
            break;
          case "place_id":
            place.placeID = m.value;
            break;
          case "local_phone_number":
            place.phone = m.value;
            break;
          case "address":
            place.address = m.value;
            break;
          case "url":
            place.url = m.value;
            break;
          case "rating":
            place.rating = m.value;
            break;
          case "wheelchair_accessible_entrance":
            place.wheelchairAccessible = m.value;
            break;
        }
      }
      places.add(place);
    }
  }

  List<Place> getPlaces() { return places; }
}

class Place
{
  String name = '';
  double lat = 0;
  double long = 0;
  String types = '';
  String placeID = '';
  String phone = '';
  String address = '';
  String url = '';
  String rating = '';
  String wheelchairAccessible = '';

  Place()
  {
  }
}