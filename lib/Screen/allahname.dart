import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AllahName extends StatefulWidget {
  const AllahName({super.key});

  @override
  State<AllahName> createState() => _AllahNameState();
}

class _AllahNameState extends State<AllahName> {

  var allahNameList = [
    {
      "name": "১ আল্লাহ",
      "translation_text": "অর্থঃ আল্লাহ",
      "arobic_name": "الله",
    },

    {
      "name": "২ আর রাহমান",
      "translation_text": "অর্থঃ পরম দয়ালু, পরম করুণাময়, সবচেয়ে দয়ালু, কল্যাণময়",
      "arobic_name": "الرحمن",
    },

    {
      "name": "৩ আর-রাহীম",
      "translation_text": "অর্থঃ অতিশয়-মেহেরবান, অতি দয়ালু",
      "arobic_name": "الرحيم",
    },
    {
      "name": "৪ আল-মালিক",
      "translation_text": "অর্থঃ সর্বকর্তৃত্বময়, অধিপতি, মালিক",
      "arobic_name": "الملك",
    },

    {
      "name": "৫ আল-কুদ্দুস",
      "translation_text": "অর্থঃ নিষ্কলুষ, অতি পবিত্র",
      "arobic_name": "القدوس",
    },

    {
      "name": "৬ আস-সালাম",
      "translation_text": "অর্থঃ নিরাপত্তা-দানকারী, শান্তি-দানকারী, ত্রাণকর্তা, দোষমুক্ত",
      "arobic_name": "السلام",
    },
    {
      "name": "৭ আল-মুমিন",
      "translation_text": "অর্থঃ নিরাপত্তা ও ঈমান দানকারী, জামিনদার, সত্য ঘোষণাকারী",
      "arobic_name": "المؤمن",
    },

    {
      "name": "৮ আল-মুহাইমিন",
      "translation_text": "অর্থঃ পরিপূর্ন রক্ষণাবেক্ষণকারী, রক্ষক, অভিভাবক, প্রতিপালনকারী",
      "arobic_name": "المهيمن",
    },

    {
      "name": "৯ আল-আজীজ",
      "translation_text": "অর্থঃ পরাক্রমশালী, অপরাজেয়, সর্বাধিক সম্মানিত, মহাসম্মানিত",
      "arobic_name": "العزيز",
    },

{
"name": "১০ আল-জাব্বার",
"translation_text":"অর্থঃ দুর্নিবার, মহাপ্রতাপশালী, অতীব মহিমান্বিত",
"arobic_name":"  الجبا",
},

{
"name": "১১ আল-মুতাকাব্বিইর",
"translation_text":"অর্থঃ নিরঙ্কুশ শ্রেষ্ঠত্বের অধিকারী, সর্বশ্রেষ্ঠ, গৌরবান্বিত, অহংকারী",
"arobic_name":"المتكبر",
},

{
"name": "১২ আল-খালিক্ব",
"translation_text":"অর্থঃ সৃষ্টিকর্তা, সৃষ্টিকারী",
"arobic_name":"الخالق",
},

{
"name": "১৩ আল-বারী",
"translation_text":"অর্থঃ সঠিকভাবে সৃষ্টিকারী",
"arobic_name":"البارئ",
},

{
"name": "১৪ আল-মুছউইর",
"translation_text":"অর্থঃ আকৃতি-দানকারী",
"arobic_name":"المصور",
},

{
"name": "১৫ আল-গফ্ফার",
"translation_text":"অর্থঃ পরম ক্ষমাশীল, অতি ক্ষমাশীল",
"arobic_name":"الغفار",
},

{
"name": "১৬ আল-ক্বাহার",
"translation_text":"অর্থঃ কঠোর, মহাপ্রতাবশালী, দমনকারী",
"arobic_name":"القهار",
},

{
"name": "১৭ আল-ওয়াহ্হাব",
"translation_text":"অর্থঃ সবকিছু দানকারী, দানশীল, স্থাপনাকারী",
"arobic_name":"الوهاب",
},

{
"name": "১৮ আর-রজ্জাক্ব",
"translation_text":"অর্থঃ রিযিকদাতা",
"arobic_name":"الرزاق",
},

{
"name": "১৯ আল ফাত্তাহ",
"translation_text":"অর্থঃ বিজয়দানকারী, শ্রেষ্ঠ ফয়সালাকারী, প্রারম্ভকারী",
"arobic_name":"الفتاح",
},

{
"name":"২০ আল-আলীম",
"translation_text":"অর্থঃ সর্বজ্ঞ, মহাজ্ঞানী",
"arobic_name":"العليم",
},

{
"name":"২১ আল-ক্ববিদ্ব",
"translation_text":"অর্থঃ নিয়ন্ত্রণকারী, সরল পথ প্রদর্শনকারী",
"arobic_name":"القابض",
},

{
"name":"২২ আল-বাসিত",
"translation_text":"অর্থঃ প্রশস্তকারী",
"arobic_name":"الباسط",
},

{
"name":"২৩ আল-খফিদ্বু",
"translation_text":"অর্থঃ অবনতকারী (কাফির ও মুশরিকদের, অবিশ্বাসীদের অপমানকারী",
"arobic_name":"الخافض",
},
{
"name":"২৪ আর-রফীই",
"translation_text":"অর্থঃ উন্নতকারী, উঁচুকারী",
"arobic_name":"الرافع",
},

{
"name":"২৫ আল-মুইজ্ব",
"translation_text":"অর্থঃ সম্মান-দানকারী",
"arobic_name":"المعز",
},

{
"name":"২৬ আল-মুদ্বি ল্লু (আল-মুযিল্ল)",
"translation_text":"অর্থঃ (অবিশ্বাসীদের) বেইজ্জতকারী, সম্মান হরণকারী",
"arobic_name":"المذل",
},

{
"name":"২৭ আস্-সামিই",
"translation_text":"অর্থঃ সর্বশ্রোতা",
"arobic_name":"السميع",
},

{
"name":"২৮ আল-বাছীর",
"translation_text":"অর্থঃ সর্ববিষয়-দর্শনকারী, সর্বদ্রষ্টা",
"arobic_name":"البصير",
},

{
"name":"২৯ আল-হাকাম",
"translation_text":"অর্থঃ অটল বিচারক, মহা বিচারপতি, হুকুমদাতা",
"arobic_name":"الحكم",
},

{
"name":"৩০ আল-আদল",
"translation_text":"অর্থঃ পরিপূর্ণ-ন্যায়বিচারক, নিখুঁত, ন্যায় বিচারক",
"arobic_name":"العدل",
},

    {
      "name":"৩১ আল-লাতীফ",
      "translation_text":"অর্থঃ সকল-গোপন-বিষয়ে-অবগত, সূক্ষ্মদর্শী, অমায়িক",
      "arobic_name":"اللطيف",
    },
    {
      "name":"৩২ আল-খবীর",
      "translation_text":"অর্থঃ সকল ব্যাপারে জ্ঞাত, সর্বজ্ঞ",
      "arobic_name":"الخبير",
    },

    {
      "name":"৩৩ আল-হালীম",
      "translation_text":"অর্থঃ অত্যন্ত ধৈর্যশীল, মহা সহনশীল, প্রশ্রয়দাতা",
      "arobic_name":"الحليم",
    },

    {
      "name":"৩৪ আল-আজীম",
      "translation_text":"অর্থঃ সর্বোচ্চ-মর্যাদাশীল, মহা মর্যাদাপূর্ণ, অতি বিরাট",
      "arobic_name":"العظيم",
    },

    {
      "name":"৩৫ আল-গফুর",
      "translation_text":"অর্থঃ পরম ক্ষমাশীল, মার্জনাকারী, অতীব ক্ষমাশীল",
      "arobic_name":"الغفور",
    },
    {
      "name":"৩৬ আশ্-শাকুর",
      "translation_text":"অর্থঃ গুনগ্রাহী, সুবিবেচক",
      "arobic_name":"الشكور",
    },

    {
      "name":"৩৭ আল-আ লিইউ",
      "translation_text":"অর্থঃ উচ্চ-মর্যাদাশীল",
      "arobic_name":"العلي",
    },

    {
      "name":"৩৮ আল-কাবিইর",
      "translation_text":"অর্থঃ সুমহান, অতি বিরাট",
      "arobic_name":"الكبير",
    },

    {
      "name":"৩৯ আল-হাফীজ",
      "translation_text":"অর্থঃ সংরক্ষণকারী",
      "arobic_name":"الحفيظ",
    },

    {
      "name":"৪০ আল-মুক্বীত",
      "translation_text":"অর্থঃ সকলের জীবনোপকরণ-দানকারী, সংরক্ষণকারী, লালনপালনকারী",
      "arobic_name":"المقيت",
    },

    {
      "name":"৪১ আল-হাসীব",
      "translation_text":"অর্থঃ হিসাব-গ্রহণকারী, মহা মীমাংসাকারী",
      "arobic_name":"الحسيب",
    },

    {
      "name":"৪২ আল-জালীল",
      "translation_text":"অর্থঃ পরম মর্যাদার অধিকারী, গৌরবান্বিত",
      "arobic_name":"الجليل",
    },

    {
      "name":"৪৩ আল-কারীম",
      "translation_text":"অর্থঃ সুমহান দাতা, মহা সম্মানিত, মহা দয়ালু",
      "arobic_name":"الكريم",
    },

    {
      "name":"৪৪ আর-রক্বীব",
      "translation_text":"অর্থঃ তত্ত্বাবধায়ক",
      "arobic_name":"الرقيب",
    },

    {
      "name":"৪৫ আল-মুজীব",
      "translation_text":"অর্থঃ জবাব-দানকারী, সাড়া দানকারী, উত্তরদাতা, দো‘আ কবুলকারী",
      "arobic_name":"المجيب",
    },

    {
      "name":"৪৬ আল-ওয়াসি",
      "translation_text":"অর্থঃ সর্ব-ব্যাপী, অসীম, ব্যাপক",
      "arobic_name":"الواسع",
    },

    {
      "name":"৪৭ আল-হাকীম",
      "translation_text":"অর্থঃ পরম-প্রজ্ঞাময়, সুবিজ্ঞ, সুদক্ষ",
      "arobic_name":"الحكيم",
    },

    {
      "name":"৪৮ আল-ওয়াদুদ",
      "translation_text":"অর্থঃ (বান্দাদের প্রতি) সদয়, প্রেমময়, পরম স্নেহশীল",
      "arobic_name":"الودود",
    },

    {
      "name":"৪৯ আল-মাজীদ",
      "translation_text":"অর্থঃ সকল-মর্যাদার-অধিকারী, মহিমান্বিত, সম্মানিত",
      "arobic_name":"المجيد",
    },

    {
      "name":"৫০ আল-বাইছ",
      "translation_text":"অর্থঃ পুনুরুজ্জীবিতকারী",
      "arobic_name":"الباعث",
    },

    {
      "name":"৫১ আশ্-শাহীদ",
      "translation_text":"অর্থঃ সর্বজ্ঞ-স্বাক্ষী, প্রত্যক্ষদর্শী",
      "arobic_name":"الشهيد",
    },

    {
      "name":"৫২ আল-হাক্ব",
      "translation_text":"অর্থঃ পরম সত্য",
      "arobic_name":"الحق",
    },

    {
      "name":"৫৩ আল-ওয়াকিল",
      "translation_text":"অর্থঃ পরম নির্ভরযোগ্য কর্ম-সম্পাদনকারী, তত্ত্বাবধায়ক, সহায় প্রদানকারী, আস্থাভাজন উকিল",
      "arobic_name":"الوكيل",
    },

    {
      "name":"৫৪ আল-ক্বউইউ",
      "translation_text":"অর্থঃ পরম-শক্তির-অধিকারী",
      "arobic_name":"القوي",
    },
    {
      "name":"৫৫ আল-মাতীন",
      "translation_text":"অর্থঃ সুদৃঢ়, সুস্থির",
      "arobic_name":"المتين",
    },

    {
      "name":"৫৬ আল-ওয়ালিইউ",
      "translation_text":"অর্থঃ অভিভাবক ও সাহায্যকারী",
      "arobic_name":"الولي",
    },

    {
      "name":"৫৭ আল-হামীদ",
      "translation_text":"অর্থঃ সকল প্রশংসার অধিকারী, সকল প্রশংসার দাবীদার, মহা প্রশংসনীয়",
      "arobic_name":"الحميد",
    },
    {
      "name":"৫৮ আল-মুহছী",
      "translation_text":"অর্থঃ সকল সৃষ্টির ব্যপারে অবগত",
      "arobic_name":"المحصي",
    },

    {
      "name":"৫৯ আল-মুব্দি",
      "translation_text":"অর্থঃ প্রথমবার-সৃষ্টিকর্তা, অগ্রণী, প্রথম প্রবর্তক",
      "arobic_name":"المبدئ",
    },

    {
      "name":"৬০ আল-মুঈদ",
      "translation_text":"অর্থঃ পুনরায়-সৃষ্টিকর্তা",
      "arobic_name":"المعيد",
    },

    {
      "name":"৬১ আল-মুহয়ী",
      "translation_text":"অর্থঃ জীবন-দানকারী",
      "arobic_name":"المحيي",
    },

    {
      "name":"৬২ আল-মুমীত",
      "translation_text":"অর্থঃ মৃত্যু-দানকারী",
      "arobic_name":"المميت",
    },

    {
      "name":"৬৩ আল-হাইয়্যু",
      "translation_text":"অর্থঃ চিরঞ্জীব, যার কোন শেষ নেই",
      "arobic_name":"الحي",
    },
    {
      "name":"৬৪ আল-ক্বাইয়্যুম",
      "translation_text":"অর্থঃ সমস্তকিছুর ধারক ও সংরক্ষণকারী",
      "arobic_name":"لقيوم",
    },
    {
      "name":"৬৫ আল-ওয়াজিদ",
      "translation_text":"অর্থঃ অফুরন্ত ভান্ডারের অধিকারী",
      "arobic_name":"الواجد",
    },

    {
      "name":"৬৬ আল-মুহীত",
      "translation_text":"অর্থঃ পরিবেষ্টনকারী, সর্ব বেষ্টনকারী",
      "arobic_name":"المحيط",
    },
    {
      "name":"৬৭ আল-ওয়াহিদ",
      "translation_text":"অর্থঃ এক ও অদ্বিতীয়",
      "arobic_name":"الواحد",
    },
    {
      "name":"৬৮ আছ্-ছমাদ",
      "translation_text":"অর্থঃ অমুখাপেক্ষী,অবিনশ্বর, চিরন্তন, স্বয়ং সম্পূর্ণ",
      "arobic_name":"الصمد",
    },

    {
      "name":"৬৯ আল-ক্বদির",
      "translation_text":"অর্থঃ সর্বশক্তিমান, মহা ক্ষমতাধর",
      "arobic_name":"القادر",
    },

    {
      "name":"৭০ আল-মুক্ব্তাদির",
      "translation_text":"অর্থঃ নিরঙ্কুশ-সিদ্বান্তের-অধিকারী",
      "arobic_name":"المقتدر",
    },

    {
      "name":"৭১ আল-মুক্বদ্দিম",
      "translation_text":"অর্থঃ অগ্রসারক, সর্বাগ্রে সহায়তা প্রদানকারী",
      "arobic_name":"المقدم",
    },

    {
      "name":"৭২ আল-মুয়াক্খির",
      "translation_text":"অর্থঃ অবকাশ দানকারী, বিলম্বকারী",
      "arobic_name":"المؤخر",
    },
    {
      "name":"৭৩ আল-আউয়াল",
      "translation_text":"অর্থঃ অনন্ত, সর্বশেষ",
      "arobic_name":"الأول",
    },

    {
      "name":"৭৪ আল-আখির",
      "translation_text":"অর্থঃ অনাদি, প্রথম",
      "arobic_name":"الأخر",
    },

    {
      "name":"৭৫ আজ-জহির",
      "translation_text":"অর্থঃ সম্পূর্নরূপে-প্রকাশিত, প্রকাশ্য",
      "arobic_name":"الظاهر",
    },

    {
      "name":"৭৬ আল-বাত্বিন",
      "translation_text":"অর্থঃ দৃষ্টি হতে অদৃশ্য, গোপন",
      "arobic_name":"الباطن",
    },

    {
      "name":"৭৭ আল-ওয়ালি",
      "translation_text":"অর্থঃ সমস্ত কিছুর অভিভাবক",
      "arobic_name":"الوالي",
    },

    {
      "name":"৭৮ আল-মুতাআলি",
      "translation_text":"অর্থঃ সৃষ্টির গুনাবলীর উর্দ্ধে",
      "arobic_name":"المتعالي",
    },

    {
      "name":"৭৯ আল-বার্",
      "translation_text":"অর্থঃ পরম-উপকারী, অণুগ্রহশীল, কল্যাণকারী",
      "arobic_name":"البر",
    },

    {
      "name":"৮০ আত্-তাওয়াব",
      "translation_text":"অর্থঃ তাওবার তাওফিক দানকারী এবং কবুলকারী, ক্ষমাকারী",
      "arobic_name":"التواب",
    },

    {
      "name":"৮১ আল-মুনতাক্বিম",
      "translation_text":"অর্থঃ প্রতিশোধ-গ্রহণকারী",
      "arobic_name":"المنتقم",
    },

    {
      "name":"৮২ আল-আফঊ",
      "translation_text":"অর্থঃ পরম-উদার, শাস্তি মউকুফকারী, গুনাহ ক্ষমাকারী, পাপ মোচনকারী",
      "arobic_name":"العفو",
    },
    {
      "name":"৮৩ আর-রউফ",
      "translation_text":"অর্থঃ পরম-স্নেহশীল, সদয়, সমবেদনা প্রকাশকারী, দয়াশীল",
      "arobic_name":"الرؤوف",
    },
    {
      "name":"৮৪ মালিকুল-মুলক",
      "translation_text":"অর্থঃ সমগ্র জগতের বাদশাহ্",
      "arobic_name":"مالك الملك",
    },

    {
      "name":"৮৫ যুল-জালালি-ওয়াল-ইকরাম",
      "translation_text":"অর্থঃ মহিমান্বিত ও দয়াবান সত্তা, মহা মর্যাদাবান, মহা মহত্ত্ব ও মহা সম্মানিত",
      "arobic_name":"ذو الجلال والإكرام",
    },

    {
      "name":"৮৬ আল-মুক্ব্সিত",
      "translation_text":"অর্থঃ একত্রকারী, সমবেতকারী",
      "arobic_name":"الجامع",
    },
    {
      "name":"৮৭ আল-জামিই",
      "translation_text":"অর্থঃ হকদারের হক-আদায়কারী",
      "arobic_name":"المقسط",
    },

    {
      "name":"৮৮ আল-গণিই",
      "translation_text":"অর্থঃ অমুখাপেক্ষী ধনী",
      "arobic_name":"الغني",
    },

    {
      "name":"৮৯ আল-মুগণিই",
      "translation_text":"অর্থঃ পরম-অভাবমোচনকারী, সমৃদ্ধকারী, উদ্ধারকারী",
      "arobic_name":"المغني",
    },

    {
      "name":"৯০ আল-মানিই",
      "translation_text":"অর্থঃ অকল্যাণরোধক, প্রতিরোধকারী, রক্ষাকর্তা, নিষেধকারী, বারণকারী",
      "arobic_name":"المانع",
    },

    {
      "name":"৯১ আয্-যর",
      "translation_text":"অর্থঃ ক্ষতিসাধনকারী, যন্ত্রনাদানকারী, উৎপীড়নকারী",
      "arobic_name":"الضار",
    },
    {
      "name":"৯২ আন্-নাফিই",
      "translation_text":"অর্থঃ কল্যাণকারী, অনুগ্রাহক, উপকারকারী, হিতকারী",
      "arobic_name":"النافع",
    },

    {
      "name":"৯৩ আন্-নূর",
      "translation_text":"অর্থঃ পরম-আলো, আলোক",
      "arobic_name":"النور",
    },

    {
      "name":"৯৪ আল-হাদী",
      "translation_text":"অর্থঃ পথ-প্রদর্শক, হিদায়েতকারী",
      "arobic_name":"الهادي",
    },

    {
      "name":"৯৫ আল-বাদীই",
      "translation_text":"অর্থঃ অতুলনীয়",
      "arobic_name":"البديع",
    },

    {
      "name":"৯৬ আল-বাক্বী",
      "translation_text":"অর্থঃ চিরস্থায়ী, অবিনশ্বর",
      "arobic_name":"الباقي",
    },
    {
      "name":"৯৭ আল-ওয়ারিস",
      "translation_text":"অর্থঃ উত্তরাধিকারী",
      "arobic_name":"الوارث",
    },

    {
      "name":"৯৮ আর-রাশীদ",
      "translation_text":"অর্থঃ সঠিক পথ-প্রদর্শক, বিচক্ষণ, সচেতন",
      "arobic_name":"الرشيد",
    },
    {
      "name":"৯৯ আস-সবুর ",
      "translation_text":"অর্থঃ অত্যধিক ধৈর্যধারণকারী",
      "arobic_name":"الصبور",
    },




  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#254C27"),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("আল্লাহর নাম"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: allahNameList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 10, left: 20,right: 10),
                          child: ListTile(
                            title: Text(allahNameList[index]['name'].toString(),style: TextStyle(
                                color: HexColor("#254C27"),
                                fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                            subtitle:Text(allahNameList[index]['translation_text'].toString(),style: TextStyle(
                              color: HexColor("#254C27"),
                              fontSize: 14,
                          ),),
                            trailing: Text(allahNameList[index]['arobic_name'].toString(),style: TextStyle(
                              color: HexColor("#254C27"),
                              fontSize: 18,

                          ),),
                          )
                        ));
                  }
              ),
            ),
          ),
        ],
      ),

    );
  }
}
