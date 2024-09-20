import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class ProbondoScreen extends StatefulWidget {
  const ProbondoScreen({super.key});

  @override
  State<ProbondoScreen> createState() => _ProbondoScreenState();
}

class _ProbondoScreenState extends State<ProbondoScreen> {
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
          title: Text("প্রবন্ধ"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Loading"),
        )
    );
  }
}
