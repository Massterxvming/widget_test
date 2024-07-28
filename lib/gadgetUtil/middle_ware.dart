import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

typedef isSnackbar=Widget Function();
//
// extension Routing on Widget{
//   Widget get isSnackbar=>_getSnackbar();
//
//   Widget _getSnackbar(){
//     return Container();
//   }
//
// }

// typedef observer =Routing Function();
class MiddleWare{
  static observer(Routing routing){
    if(routing.current=='ListPage'){
      Get.snackbar('OI','You are in ListPage');
    }
    else{
      Get.snackbar('sorry','酸萝卜别吃');
    }
  }
}