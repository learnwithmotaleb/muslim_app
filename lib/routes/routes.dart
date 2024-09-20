import 'package:get/get.dart';
import 'package:ummahmuslimbangla/Mushab_Detais/bangla_quran.dart';
import 'package:ummahmuslimbangla/Mushab_Detais/hafeji_quran.dart';
import 'package:ummahmuslimbangla/Mushab_Detais/nurani_quran.dart';
import 'package:ummahmuslimbangla/Screen/allahname.dart';
import 'package:ummahmuslimbangla/Screen/doa_screen.dart';
import 'package:ummahmuslimbangla/Screen/hadis_screen.dart';
import 'package:ummahmuslimbangla/Screen/hoj_humra.dart';
import 'package:ummahmuslimbangla/Screen/homepage.dart';
import 'package:ummahmuslimbangla/Screen/kiblaCampass.dart';
import 'package:ummahmuslimbangla/Screen/ktab_screen.dart';
import 'package:ummahmuslimbangla/Screen/mosojit.dart';
import 'package:ummahmuslimbangla/Screen/mushab_screen.dart';
import 'package:ummahmuslimbangla/Screen/namajer_somay.dart';
import 'package:ummahmuslimbangla/roja_screen/roja_screen.dart';
import 'package:ummahmuslimbangla/Screen/splash_screen.dart';
import 'package:ummahmuslimbangla/Screen/tafsir.dart';
import 'package:ummahmuslimbangla/routes/routes_name.dart';
import 'package:ummahmuslimbangla/tafsirdetails/tafsir_detaisl.dart';

import '../DatailsPage/doa_details.dart';
import '../LiveTv/live_tv_screen.dart';
import '../QuranSikha/quran_sikkha.dart';
import '../Screen/Tasbiho.dart';
import '../Screen/calender_screen.dart';
import '../biniyok_box/binokBox.dart';
import '../boyan_screen/Boyan_screen.dart';
import '../dini_jigasa/dinijigasa_screen.dart';
import '../gurupopurnurnoDin/Gurupopurno_din.dart';
import '../hoj_or_humra_details/detailsPage.dart';
import '../ityhas/ItyhasScreen.dart';
import '../namajSikkha/NamajShkka.dart';
import '../namajSikkha/namaj_detatis.dart';
import '../onno/ononno_screen.dart';
import '../probondo/Probondo_screen.dart';
import '../roja_screen/roja_item_details.dart';
import '../zakat_screen/zakat_screen.dart';

class AppRoutes{
  static appRoutes()=>[
    GetPage(name: RoutesName.SplashScreen, page: ()=> const SplashScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.homepage, page: ()=> const MainScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.doapage, page: ()=> const Doa_Screen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.doaDetailsPage, page: ()=> DetailsPage(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.tafsirpage, page: ()=> TafsirScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.namajerSomoyPage, page: ()=> NajmajerSomayScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.kiblaCompassPage, page: ()=> KiblaCampass(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.allahNamePage, page: ()=> AllahName(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.tasbihoPage, page: ()=> TasbihScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.hadisPage, page: ()=> HadisPage(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.rojaPage, page: ()=> RojaPage(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.hojPage, page: ()=> HojOmraPage(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.kitabPage, page: ()=> KitabPage(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.rojaDetails, page: ()=> roja_details_page(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.biniokPage, page: ()=> BinokBoxScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.mushabPage, page: ()=> MushabScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.banglaQuranPage, page: ()=> BanglaQuran(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.nuraniQuranPage, page: ()=> NuraniQuran(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.hafejiQuranPage, page: ()=> HafejiQuran(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.tafsirDetailPage, page: ()=> Tafsir_Detaish_Page(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.mosojitPage, page: ()=> MosojitScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.hojumradetailsPage, page: ()=> HojUmraPage(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.hijiriCalender, page: ()=> HijiriCalenderScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.zakatScreen, page: ()=> ZakatScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.dinijigasa, page: ()=> DiniJigasaScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.boyanScreen, page: ()=> BoyanScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.probondoScreen, page: ()=> ProbondoScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.quranShakka, page: ()=> QuranSikkha(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.namajShakka, page: ()=> NamajSikkah(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.liveTvScreen, page: ()=> LiveTvScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.guruptoPurnoDin, page: ()=> GurupoPurnoDinScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.ityhasScreen, page: ()=> ItihasScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.onnoScreen, page: ()=> OnnoScreen(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),
    GetPage(name: RoutesName.namajDetalisPage, page: ()=> Nama_DetailsPage(),
        transitionDuration: const Duration(milliseconds: 500),
        transition: Transition.leftToRightWithFade),

  ];
}