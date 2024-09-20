import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class TasbihScreen extends StatefulWidget {
  const TasbihScreen({super.key});

  @override
  State<TasbihScreen> createState() => _TasbihScreenState();
}

class _TasbihScreenState extends State<TasbihScreen> {
  var counter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle:SystemUiOverlayStyle(
          statusBarColor: HexColor("#254C27"),
        ) ,
        backgroundColor: HexColor("#254C27"),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("তাসবীহ"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text("হে আল্লাহ! তুমি আমার রব। তুমি ছাড়া আর কোন সত্য মাবুদ নাই। \nতুমি আমাকে সৃষ্টি করেছো,আমি তোমার বান্দা।\n আমি তোমার ওয়াদা ও অঙ্গিকার উপর সাধ্যানুযায়ী।",style: TextStyle(

                color:  HexColor("#254C27"),
                fontSize: 18
            ),)),
            SizedBox(height: 100,),
            InkWell(
              onTap: (){
                counter=0;
                setState(() {

                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.refresh,color:HexColor("#254C27") ,size: 30,),
                  SizedBox(width: 10,),
                  Text("রিসেট করুন",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:  HexColor("#254C27"),
                      fontSize: 18
                  ),)
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                counter++;
                setState(() {

                });

              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: HexColor("#254C27"),
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 60.0,
                      spreadRadius: 5.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: 4,
                    color: HexColor("#254C27"),
                    style: BorderStyle.solid,
                  )
                ),
                child: Center(
                  child: Text("$counter",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:  HexColor("#254C27"),
                    fontSize: 25
                  ),),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text("সর্বমোটঃ $counter",style: TextStyle(
                fontWeight: FontWeight.bold,
                color:  HexColor("#254C27"),
                fontSize: 18
            ) ,)
          ],
        ),
      ),

    );
  }
}
