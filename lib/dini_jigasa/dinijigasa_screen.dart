import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class DiniJigasaScreen extends StatefulWidget {
  const DiniJigasaScreen({super.key});

  @override
  State<DiniJigasaScreen> createState() => _DiniJigasaScreenState();
}

class _DiniJigasaScreenState extends State<DiniJigasaScreen> {
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
          title: Text("দীনি জিজ্ঞাশা"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Loading"),
        )
    );
  }
}
