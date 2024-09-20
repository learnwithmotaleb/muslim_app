import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ummahmuslimbangla/routes/routes_name.dart';

class TafsirScreen extends StatefulWidget {
  const TafsirScreen({super.key});

  @override
  State<TafsirScreen> createState() => _TafsirScreenState();
}

class _TafsirScreenState extends State<TafsirScreen> {
  var tafsirList = [
    {
      "name": "আল ফাতিহা",
      "arobic": "بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ ۝"
          "\n"
          "  ٱلْحَمْدُ لِلَّٰهِ رَبِّ ٱلْعَالَمِينَ ۝"
      "\n"
          " ٱلرَّحْمَٰنِ ٱلرَّحِيمِ ۝"
          "\n"
          " مَالِكِ يَوْمِ ٱلدِّينِ ۝"
          "\n"
          "إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ۝"
          "\n"
          " ٱهْدِنَا ٱلصِّرَاطَ ٱلْمُسْتَقِيمَ ۝"
          "\n"
          "صِرَاطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ ۝"
          "\n"
          " غَيۡرِ ٱلْمَغْضُوبِ عَلَيۡهِمۡ وَلَا اَ۬لضَّآلِّينَ ص ۝",
      "bangla": "বিসমিল্লাহির রহমানির রহিম"
          "\nআলহামদুলিল্লা-হি রব্বিল আ-লামীন।"
          "\nআর রহমা-নির রহীম।"
          "\nমা-লিকি ইয়াওমিদ্দীন।"
          "\nইয়্যা-কা না’বুদু ওয়া ইয়্যা-কানাছতা’ঈন।"
          "\nইহদিনাসসিরা-তাল মুছতাকীম।"
          "\nসিরা-তাল্লাযীনা আন’আম তা’আলাইহিম।"
          "\nগাইরিল মাগদূ বি’আলাইহীম ওয়ালাদ্দাল্লীন। (আমিন )",
      "anubat": "১:পরম করুণাময়, অতি দয়ালু আল্লাহর নামে।"
          "\n\n২:সমস্ত প্রশংসা জগতসমূহের প্রতিপালক আল্লাহর জন্যে।"
          "\n\n৩:অনন্ত দয়াময়, অতীব দয়ালু।"
          "\n\n৪:বিচার দিবসের মালিক।"
          "\n\n৫:আমরা শুধু আপনারই দাসত্ব করি এবং শুধু আপনারই নিকট সাহায্য কামনা করি।"
          "\n\n৬:আমাদের সরল পথনির্দেশ দান করুন।"
          "\n\n৭:তাদের পথে, যাদের আপনি অনুগ্রহ করেছেন, এবং তাদের পথে নয় যারা  আপনার ক্রোধের শিকার ও পথভ্রষ্ট । ( কবুল করুন )\n\n",
    },
    {"name": "আল বাকারা", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আলে ইমরান", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আন নিসা", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আন নিসা", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আল মায়িদাহ", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আল আনআম", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আল আরাফ", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আল আনফাল", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আত তাওবাহ", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "ইউনুস", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "হুদ", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "ইউসুফ", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আররাদ", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "ইব্রাহীম", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আল হিজর", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আন নাহ্ল", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "বনী-ইসরাঈল", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আল কাহফ", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "মারইয়াম", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "ত্ব-হা", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আল আম্বিয়া", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আল হাজ্জব", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আল মুমিনুন", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আন নূর", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আল ফুরকান", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আশ শুআরা", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আন নামল", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আল কবাসাস", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আর রুম", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "লুকমান", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আস সিজদাহ", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "আল আহযাব", "arobic": "", "bangla": "", "anubat": ""},
    {"name": "সাবা", "arobic": "", "bangla": "", "anubat": ""},
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
        title: Text("তাফসীর"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "কুইক লিং",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: tafsirList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Get.toNamed(RoutesName.tafsirDetailPage,
                                arguments: [
                                  tafsirList[index]["name"].toString(),
                                  tafsirList[index]['arobic'].toString(),
                                  tafsirList[index]['bangla'].toString(),
                                  tafsirList[index]['anubat'].toString(),
                                ]);
                          },
                          child: Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 3, bottom: 3, left: 15, right: 15),
                                child: Center(
                                  child: Text(
                                    tafsirList[index]['name'].toString(),
                                    style: TextStyle(
                                        color: HexColor("#254C27"),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                        );
                      }),
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: tafsirList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.toNamed(RoutesName.tafsirDetailPage, arguments: [
                          tafsirList[index]["name"].toString(),
                          tafsirList[index]['arobic'].toString(),
                          tafsirList[index]['bangla'].toString(),
                          tafsirList[index]['anubat'].toString(),
                        ]);
                      },
                      child: Card(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 20, right: 10),
                            child: Text(
                              tafsirList[index]['name'].toString(),
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
