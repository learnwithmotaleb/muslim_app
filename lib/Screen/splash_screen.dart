import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hexcolor/hexcolor.dart';

import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    moveToNextScreen();
    super.initState();
  }

  void moveToNextScreen()async{
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(const MainScreen());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("assets/images/logomain.png", width: 120,height: 120,),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Text("UMMAH MUSLIM",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: HexColor("#254C27"),
                    letterSpacing: 2
                  ),),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child:CircularProgressIndicator(),
              ),
              SizedBox(height: 40,),
              Center(child: Text("Version 1.0"),),
            ],
          )
    )


        ],
      ),
    );
  }
}
