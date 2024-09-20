import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class BanglaQuran extends StatefulWidget {
  const BanglaQuran({super.key});

  @override
  State<BanglaQuran> createState() => _BanglaQuranState();
}

class _BanglaQuranState extends State<BanglaQuran> {
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
        title: Text("কোরআন শরীফ বাংলা অর্থসহ"),
        centerTitle: true,
      ),
        body:Container(
            child:SfPdfViewer.network("https://ia800901.us.archive.org/35/items/329963/Quran-Easy-Bangla-Translation.pdf")
        )

    );
  }
}
