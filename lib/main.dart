import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ummahmuslimbangla/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //background_color: #2E431D
  //forground_color:#fff

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ummah Muslim Bangla',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primaryColor:  HexColor("#254C27"),
      ),
      // home: const SplashScreen(),
    getPages: AppRoutes.appRoutes(),
    );
  }
}


