import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ummahmuslimbangla/routes/routes_name.dart';

import 'package:intl/intl.dart';

import '../DateController/BanglaDateController/Bangla_Date.dart';

import 'dart:async';

import 'package:get/get_core/src/get_main.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _timeString;
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    _timeString = _formatTime(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTimeString());
    loadWebPage();
  }

  _getTimeString() {
    final DateTime now = DateTime.now();
    final String formattedTime = _formatTime(now);

    setState(() {
      _timeString = formattedTime;
    });
  }

  String _formatTime(DateTime dateTime) {
    return DateFormat('hh:mm:ss').format(dateTime);
  }

  loadWebPage() {
    controller = WebViewController()..loadFile('assets/htmlfile/index.html');
  }

  @override
  Widget build(BuildContext context) {
    DateTime nowTime = DateTime.now();
    String formattedDateDate = DateFormat(' EEE d MMM').format(nowTime);

    var _today = BanglaDate.now();

    return WillPopScope(
      onWillPop: () => onBackPreeAlert(context),
      child: Scaffold(
          backgroundColor: HexColor("#254C27"),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                                        children: [
                              Center(
                                child: Text(_timeString.toString(),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  "${_today.bWeekDay}, ${_today.bDay}  ${_today.bMonth}  ${_today.bYear} বঙ্গাব্দ,  ${_today.bSeason}কাল ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                                                        ],
                                                      ),
                            )),
                        SizedBox(height: 10,),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "05:09 AM",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "ফজর",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "12:16 PM",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "যুহর",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "4:27 PM",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "আসর",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "06:06 PM",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "মাগরিব",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "07:22 PM",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "এশা",
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      flex: 5,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.tafsirpage);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/tabsir.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "তাফসীর",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.namajerSomoyPage);
                                  },
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Image.asset("assets/images/name_time.png",
                                          width: 40,
                                          height: 40,
                                          color: Colors.white),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "নামাজের সময়",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  )),
                                )),
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.mushabPage);
                                  },
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/mushab.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "তিলাওয়াত",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  )),
                                )),
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Doa_Screen()));
                                    Get.toNamed(RoutesName.doapage);
                                  },
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/daa.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "দু-আ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  )),
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.kitabPage);
                                  },
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/kitab.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "কিতাব",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  )),
                                )),
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.hadisPage);
                                  },
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/hadis.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "হাদীস",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  )),
                                )),
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.dinijigasa);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/diniask.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "দীনি জিজ্ঞাশা",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.rojaPage);
                                  },
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/iftar.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "রোজা",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  )),
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.boyanScreen);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/microphone.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "বয়ান",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.probondoScreen);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/probondo.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "প্রবন্ধ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.quranShakka);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/teaching.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "কুরআন শিক্ষা",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.kiblaCompassPage);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/kibla.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "ক্কিবলা কম্পাস",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.tasbihoPage);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/tasbih.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "তাসবীহ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.mosojitPage);
                                  },
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/mosojit.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "মসজিদ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  )),
                                )),
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.zakatScreen);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/jakat.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "যাকাত",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.hojPage);
                                  },
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/hoj.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "হজ্জ ও উমরা",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  )),
                                )),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.namajShakka);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/ruku.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "নামাজ শিক্ষা",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.allahNamePage);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/allah.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "আল্লাহর নাম",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.liveTvScreen);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/historyjiboni.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "লাইভ",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.hijiriCalender);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/calen.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "ক্যালেন্ডার",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.guruptoPurnoDin);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/file.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "গুরুপ্তপূর্ন দিন",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.biniokPage);
                                  },
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/donation.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "বিনিয়োগ বক্স",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  )),
                                )),
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.ityhasScreen);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/folder.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "ইতিহাস",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                                Expanded(
                                    child: Center(
                                        child: InkWell(
                                  onTap: () {
                                    Get.toNamed(RoutesName.onnoScreen);
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/other.png",
                                        width: 40,
                                        height: 40,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "অন্যান্য",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ))),
                              ],
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          )),
    );
  }

  Future<bool> onBackPreeAlert(BuildContext context) async {
    bool? exitApp = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Ummah Muslim Bangla'),
            content: Text('Are you sure want to exit'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text('No')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text('Yes')),
            ],
          );
        });
    return exitApp ?? false;
  }
}
