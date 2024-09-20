import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ummahmuslimbangla/routes/routes_name.dart';

import '../DatailsPage/doa_details.dart';

class Doa_Screen extends StatefulWidget {
  const Doa_Screen({super.key});

  @override
  State<Doa_Screen> createState() => _Doa_ScreenState();
}

class _Doa_ScreenState extends State<Doa_Screen> {
  var doa_list = [
    {
      "name": "আউজু বিল্লাহি মিনাশ শাইতানির রাজিম",
      "arobic":"",
      "bangla": "আউজু বিল্লাহি মিনাশ শাইতানির রাজিম",
      "anubat":
          "অর্থঃ বিতারিত শয়তানের হাত থেকে আল্লাহর নিকট আশ্রয় প্রার্থনা করছি।"
    },
    {
      "name": "বিস্মিল্লাহির রহমানির রাহিম",
      "arobic":"",
      "bangla": "বিস্মিল্লাহির রহমানির রাহিম",
      "anubat": "অর্থঃ পরম করুনাময় অসীম দয়ালু আল্লাহর নামে আরম্ভ করছি।"
    },
    {
      "name": "রাব্বানা আ’তিনা ফিদ্দুনিয়া হাছানাতাঁও",
      "arobic":"",
      "bangla":
          "রাব্বানা আ’তিনা ফিদ্দুনিয়া হাছানাতাঁও ওয়াফিল আখিরাতি হাছানাতাঁও ওয়াক্বিনা আজাবান্নার।",
      "anubat":
          "অর্থঃ হে আল্লাহ্ তুমি আমাকে ইহকালীন যাবতীয় সুখ-শান্তি ও পরকালীন যাবতীয় সুখ-শান্তি প্রদান কর। আর দোজখের আগুন থেকে আমাকে রক্ষা কর।"
    },
    {
      "name": "মাতা-পিতার জন্য সন্তানের দোয়া",
      "arobic":"",
      "bangla":
          "রাব্বির হামহুমা কামা রাব্বাঈয়ানী সাগিরা। (সূরা বণী ইসরাইল, আয়াতঃ ২৩-২৫)",
      "anubat":
          "অর্থঃ হে আল্লাহ্ আমার মাতা-পিতার প্রতি আপনি সেই ভাবে সদয় হউন, তাঁরা শৈশবে আমাকে যেমন স্নেহ-মমতা দিয়ে লালন-পালন করেছেন।"
    },

    {
      "name": "ঈমানের সাথে মৃত্যু বরণ করার দোয়া",
      "arobic":"",
      "bangla":
      "রাব্বানা লা’তুযিগ কুলুবানা বা’দা ইয হাদাইতানা ওয়া হাবলানা মিল্লাদুনকা রাহমাতান, ইন্নাকা আনতাল ওয়াহাব। (সুরা আল ইমরান, আয়াতঃ ০৮)",
      "anubat":
      "অর্থঃ হে আমাদের পালনকর্তা, সরলপথ প্রদর্শনের পর তুমি আমাদের অন্তরকে বক্র করে দিওনা এবং তুমি আমাদের প্রতি করুনা কর, তুমিই মহান দাতা।"
    },
    {
      "name": "ভুল করে ফেললে ক্ষমা চাওয়ার দোয়া",
      "arobic":"",
      "bangla":
      "রাব্বাবা যালামনা আনফুসানা ওয়া ইল্লাম তাগফির্লানা ওয়াতার হামনা লানা কুনান্না মিনাল খা’সিরিন।",
      "anubat":
      "অর্থঃ হে আল্লাহ্, আমি আমার নিজের উপর জুলুম করে ফেলেছি। এখন তুমি যদি ক্ষমা ও রহম না কর, তাহলে আমি ধ্বংস হয়ে যাব।"
    },
    {
      "name": "গুনাহ্ মাফের দোয়া",
      "arobic":"",
      "bangla":
      "রাব্বানা ফাগফিরলানা যুনুবানা ওয়া কাফফির আন্না সাইয়্যিআতিনা ওয়া তাওয়াফ্ফানা মায়াল আবরার। (সূরা আল ইমরান, আয়াতঃ ১৯৩)",
      "anubat":
      "অর্থঃ হে আমাদের পালনকর্তা, আমাদের গুনাহসমূহ মাফ করে দাও, আমাদের থেকে সকল মন্দ দূর করে দাও এবং আমাদের নেক লোকদের সাহচার্য দান কর।"
    },
    {
      "name": "স্বামী-স্ত্রী-সন্তানদের জন্য দোয়া",
      "arobic":"",
      "bangla":
      "রাব্বানা হাবলানা মিন আযওয়াজিনা ওয়া যুররিইয়াতিনা কুররাতা আইইনিও ওয়াজ আলনা লিল মুত্তাক্বিনা ইমামা। (সূরা আল ফুরকান, আয়াতঃ ৭৪) ",
      "anubat":
      "অর্থঃ হে আমাদের পালনকর্তা, আমাদিগকে আমাদের স্ত্রী ও সন্তান-সন্ততিগণ হতে নয়নের তৃপ্তি দান কর এবং আমাদেরকে মুত্তাকীদের নেতা বানাও।"
    },

    {
      "name": "ঈমান ঠিক রাখার আমল",
      "arobic":"",
      "bangla":
      "ইয়া মুক্বাল্লিবাল কুলুবি ছাব্বিত ক্বালবি আলা দ্বীনিকা।",
      "anubat":
      "অর্থঃ হে মনের গতি পরিবর্তনকারী, আমার মনকে সত্য দ্বীনের উপর স্থিত কর।"
    },
    {
      "name": "সন্তানদের প্রতি মাতা-পিতার দোয়া",
      "arobic":"",
      "bangla":
      "রাব্বিজ আলনী মুতিমাছ ছালাতি ওয়ামিন জুররি ইয়াতি, রাব্বানা ওয়াতাকাব্বাল দুয়া, রাব্বানাগ ফিরলি ওয়ালি ওয়ালি দাইয়া ওয়ালিল মু’মিনিনা ইয়াওয়া ইয়াকুমুল হিসাব। (সূরা ইব্রাহিম, আয়াতঃ ৪০-৪১)",
      "anubat":
      "অর্থঃ হে আমার পালনকর্তা, আমাকে নামাজ কায়েমকারী বানাও আর আমার সন্তানদের মধ্য থেকেও। হে আল্লাহ্ আমার দোয়া কবুল করে নাও। হে আল্লাহ্ আমাকে ও আমার মাতা- পিতাকে আর সকল ঈমানদার লোকদের সেদিন ক্ষমা করে দিও, যেদিন হিসাব কার্যকর হবে।"
    },
    {
      "name": "নেক সন্তানদের জন্য দোয়া",
      "arobic":"",
      "bangla":
      "রাব্বি হাবলি মিনাস সালেহীন",
      "anubat":
      "অর্থঃ হে আমার পালনকর্তা, আমাকে নেককার সৎ-কর্মশীল সন্তান দান কর।"
    },
    {
      "name": "অবাধ্য সন্তান বাধ্য করার দোয়া",
      "arobic":"",
      "bangla":
      "ওয়াছলিহলি ফী যুররিইয়াতি, ইন্নি তুবতু ইলাইকা, ওয়া ইন্নি মিনাল মুসলিমীন। (সূরা আহকাফ, আয়াতঃ ১৫)",
      "anubat":
      "অর্থঃ আমার জন্য আমার সন্তানদের মধ্যে প্রীতি দান কর, অবশ্যই আমি তোমারই দিকে ফিরিতেছি এবং অবশ্যই আমি মুসলমানদের অন্তর্ভূক্ত।"
    },
    {
      "name": "সকল মুসলমানদের জন্য দোয়া",
      "arobic":"",
      "bangla":
      "আল্লাহুম্মাগ ফিরলী ওয়ালিল মু’মিনিনা ওয়াল মু’মিনাতি, ওয়াল মুসলিমিনা ওয়াল মুসলিমাতি।",
      "anubat":
      "অর্থঃ হে আল্লাহ্ তুমি আমার ও সমস্ত মু’মিন নর-নারীর এবং সমস্ত মুসলমান পুরুষ ও স্ত্রীলোকের পাপ সমূহ মোচন করে দাও।"
    },
    {
      "name": "কাফেরদের বিরুদ্ধে বিজয়ী হওয়ার দোয়া",
      "arobic":"",
      "bangla":
      "রাব্বানাগ ফিরলানা যুনুবানা ওয়া ইসরাফানা ফী আমরিনা ওয়া ছাব্বিত আক্কদামানা ওয়ানছুরনা আলাল কাওমিল ক্বাফিরীন। (সূরা আল ইমরান, আয়াতঃ ১৪৭)",
      "anubat":
      "অর্থঃ হে আমাদের পালনকর্তা, আমাদের গুনাহ এবং কোন কাজের সীমা লঙ্ঘনকে তুমি ক্ষমা কর, আমাদের ঈমান দৃঢ় রাখ এবং কাফেরদের বিরুদ্ধে আমাদের বিজয়ী কর।"
    },
    {
      "name": "ক্ষমা ও রহমতের দোয়া",
      "arobic":"",
      "bangla":
      "রাব্বিগ ফির ওয়ারহাম ওয়া আনতা খাইরুর রাহিমীন।",
      "anubat":
      "অর্থঃ হে আল্লাহ্, আমাকে ক্ষমা করে দাও, আর আমার প্রতি রহম কর, তুমিই তো উত্তম দয়ালু।"
    },
  ];

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
        title: Text("দু-আ"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "দু-আ খুজুন..",
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              )),
          Expanded(
            flex: 8,
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: doa_list.length,
                  itemBuilder: (BuildContext context, int index) {

                    return InkWell(
                      onTap: (){
                        Get.toNamed(RoutesName.doaDetailsPage,arguments: [
                          doa_list[index]['name'].toString(),
                          doa_list[index]['arobic'].toString(),
                          doa_list[index]['bangla'].toString(),
                          doa_list[index]['anubat'].toString(),

                        ]);

                      },
                      child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, left: 20, right: 10),
                            child: Text(
                              doa_list[index]['name'].toString(),
                              style: TextStyle(
                                  color: HexColor("#254C27"),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
