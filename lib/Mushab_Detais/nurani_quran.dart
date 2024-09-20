import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class NuraniQuran extends StatefulWidget {
  const NuraniQuran({super.key});

  @override
  State<NuraniQuran> createState() => _NuraniQuranState();
}

class _NuraniQuranState extends State<NuraniQuran> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:SystemUiOverlayStyle(
          statusBarColor: HexColor("#254C27"),
        ) ,
        backgroundColor: HexColor("#254C27"),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("নূরানী কোরআন শরীফ"),
        centerTitle: true,
      ),
      body:Container(
        child:SfPdfViewer.network("https://ia800500.us.archive.org/25/items/quranbd/Imdadia-Nurani-Quran.pdf")
      )

    );
  }
}
