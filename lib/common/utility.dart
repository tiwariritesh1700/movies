import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:movies/common/api.dart';

class Utility{
  static log(Object data){
    print(data);
  }

  static getImage(String path){
  return API.PRFIX_FOR_MOVIES_IMAGE+path;
  }
  static Future<bool> isNetworkConnected() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }

}