import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';

class HojUmraPage extends StatefulWidget {
   HojUmraPage({super.key});

  var name_text = Get.arguments[0];
  var arobic_text = Get.arguments[1];
  var bangla_text = Get.arguments[2];
  var translate_text = Get.arguments[3];

  @override
  State<HojUmraPage> createState() => _HojUmraPageState();
}

class _HojUmraPageState extends State<HojUmraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: HexColor("#254C27"),
        ),
        backgroundColor: HexColor("#254C27"),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("হজ্জ ও উমরা"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              SizedBox(height: 15,),
              Text(widget.name_text.toString(),style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 30,),
              Text(widget.arobic_text.toString(),style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),),
              SizedBox(height: 30,),
              Text(widget.bangla_text.toString(),style: TextStyle(
                fontSize: 16,
                color: Colors.black,

              ),),

              SizedBox(height: 30,),
              Text(widget.translate_text.toString(),style: TextStyle(
                fontSize: 16,
                color: Colors.black,

              ),),

            ],

          ),
        ),
      ),

    );
  }
}
