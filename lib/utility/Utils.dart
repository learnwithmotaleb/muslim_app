import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Utils{
  static toastMessageCenter(String message){
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.CENTER
    );

  }

  static snakBar(String title,String message){
    Get.snackbar(title,message);
  }

}