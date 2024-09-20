import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ummahmuslimbangla/routes/routes_name.dart';

class MushabScreen extends StatefulWidget {
  const MushabScreen({super.key});

  @override
  State<MushabScreen> createState() => _MushabScreenState();
}

class _MushabScreenState extends State<MushabScreen> {
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
        title: Text("তিলাওয়াত"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Get.toNamed(RoutesName.banglaQuranPage);
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/bangla_quran.png"),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text(
                            "কোরআন শরীফ বাংলা অর্থসহ",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),

                          ))
                        ],
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Get.toNamed(RoutesName.hafejiQuranPage);
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/nurani_hafeji_quran.png"),
                          SizedBox(
                            height: 10,
                          ),
                          Center(child: Text("নূরানী হাফেজী কোরআন শরীফ",    style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),))
                        ],
                      ),
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                    onTap: () {
                      Get.toNamed(RoutesName.nuraniQuranPage);
                    },
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/nurani_quran.png"),
                          SizedBox(
                            height: 10,
                          ),
                          Center(child: Text("নূরানী কোরআন শরীফ",    style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),))
                        ],
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [],
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
