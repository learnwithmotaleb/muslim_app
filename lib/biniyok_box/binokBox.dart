import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hexcolor/hexcolor.dart';

class BinokBoxScreen extends StatefulWidget {
  const BinokBoxScreen({super.key});

  @override
  State<BinokBoxScreen> createState() => _BinokBoxScreenState();
}

class _BinokBoxScreenState extends State<BinokBoxScreen> {

  var numberText = "+8801701577479";


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
        title: Text("বিনিয়োগ বক্স"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Center(
              child: Text("\"দানের গুরুত্ব সম্পর্কে সূরা যারিয়াতের ১৯ নং আয়াতে বলা হয়েছে,\nতোমাদের সম্পদে গরিব-অসহায়দের অধিকার রয়েছে\"",style: TextStyle(
                  color:  HexColor("#254C27"),
                  fontSize: 16,
                fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 50,),
            Text("বিকাশ/নগদ/উপায়/রকেটঃ ",style: TextStyle(
                color:  HexColor("#254C27"),
                fontSize: 16,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap:(){

                  },
                  child: Text(numberText,style: TextStyle(
                      color:  Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(width: 20,),
                Center(
                  child: TextButton(onPressed: (){
                    copyText(numberText);
                  }, child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),

                    child: Center(
                      child: Text("Copy",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColor("#254C27"),
                        fontSize: 18
                      ),),
                    ),
                  ),),
                )
              ],
            ),
          ],
        ),
      ),

    );
  }
  void copyText(String text) {
    Clipboard.setData(ClipboardData(text: text),);
  }




}

