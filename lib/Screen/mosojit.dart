import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ummahmuslimbangla/Languages/app_text.dart';

class MosojitScreen extends StatefulWidget {
  const MosojitScreen({super.key});

  @override
  State<MosojitScreen> createState() => _MosojitScreenState();
}

class _MosojitScreenState extends State<MosojitScreen> {
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
        title: Text("মসজিদ"),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Text(AppText.mosojitTitle0,
                style: TextStyle(
                fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: HexColor("#254C27")
              ),
              ),
              SizedBox(height: 30),
              Text(AppText.mosojitText1,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black
                ),
              ),
              SizedBox(height: 30),
              Text(AppText.mosojitText2,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),),
              SizedBox(height: 30),
              Text(AppText.mosojitText3,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),),
              SizedBox(height: 30),
              Text(AppText.mosojitText4,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),),
              SizedBox(height: 30),
              Text(AppText.mosojitText5,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),),
              SizedBox(height: 30),
              Text(AppText.mosojitText6,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),),
              SizedBox(height: 30),
              Text(AppText.mosojitText7,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),),
              SizedBox(height: 30),
              Text(AppText.mosojitText8,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),),
              SizedBox(height: 30),
              Text(AppText.mosojitText9,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),),
              SizedBox(height: 30),
              Text(AppText.mosojitText10,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),),
              SizedBox(height: 30),
              Text(AppText.mosojitText11,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),),
              SizedBox(height: 30),
              Text(AppText.mosojitText12,style: TextStyle(
                  fontSize: 16,
                  color: Colors.black
              ),),
              SizedBox(height: 30,)
          
          
            ],
          ),
        ),
      )
    );
  }
}
