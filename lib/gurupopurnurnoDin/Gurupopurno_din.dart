import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class GurupoPurnoDinScreen extends StatefulWidget {
  const GurupoPurnoDinScreen({super.key});

  @override
  State<GurupoPurnoDinScreen> createState() => _GurupoPurnoDinScreenState();
}

class _GurupoPurnoDinScreenState extends State<GurupoPurnoDinScreen> {
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
          title: Text("গুরুপ্তপূর্ন দিন"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Loading"),
        )
    );
  }
}
