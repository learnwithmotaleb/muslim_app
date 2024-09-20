import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class KitabPage extends StatefulWidget {
  const KitabPage({super.key});

  @override
  State<KitabPage> createState() => _KitabPageState();
}

class _KitabPageState extends State<KitabPage> {
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
        title: Text("কিতাব"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Loading"),
      ),
    );
  }
}
