import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';


String url = "https://syren-back-end-r7ncluqkxq-ue.a.run.app/";
String dataFilePath = "";
String lastUpdateFilePath = "";

FetchData() async {
  if(await askPermission()) {
    Directory d = await getApplicationSupportDirectory();
    dataFilePath = d.path;
    final request = await HttpClient().getUrl(Uri.parse(url));
    final response = await request.close();
    if(await File(dataFilePath + "/currentData.json").exists()) {
      File(dataFilePath + "/currentData.json").create();
    }
    await response.pipe(File(dataFilePath + "/currentData.json").openWrite());
  }
}

Future<bool> askPermission() async{
  PermissionStatus status = await Permission.storage.request();
  if(status.isDenied == true)
  {
    return askPermission();
  }
  else
  {
    return true;
  }
}