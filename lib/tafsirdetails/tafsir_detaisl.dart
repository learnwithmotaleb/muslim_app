import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:audioplayers/audioplayers.dart';


class Tafsir_Detaish_Page extends StatefulWidget {

  Tafsir_Detaish_Page({super.key});

  var name_text = Get.arguments[0];
  var arobic_text = Get.arguments[1];
  var bangla_text = Get.arguments[2];
  var translate_text = Get.arguments[3];


  @override
  State<Tafsir_Detaish_Page> createState() => _Tafsir_Detaish_PageState();
}

class _Tafsir_Detaish_PageState extends State<Tafsir_Detaish_Page> {


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
        title: Text(widget.name_text.toString()),
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

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            activeColor: HexColor("#254C27"),
            tabBackgroundColor: Colors.blue.shade50,
            color: Colors.black,
            iconSize: 35,
            padding: EdgeInsets.all(10),
            onTabChange: (index){
              if(index == 0){

                setState(() {

                });
                print("index 1");
              }else if(index==1){

                setState(() {

                });
                print("index 2");
              }else if(index==2){

                setState(() {

                });
                print("index 3");
              }else{

                setState(() {

                });
                print("index 4");
              }
            },
            tabs: [
              GButton(icon: Icons.skip_previous ),
              GButton(icon: Icons.play_arrow,),
              GButton(icon: Icons.skip_next),
              GButton(icon: Icons.stop,),
            ],

          ),
        ),
      ),
    );
  }
}
