import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class OnnoScreen extends StatefulWidget {
  const OnnoScreen({super.key});

  @override
  State<OnnoScreen> createState() => _OnnoScreenState();
}

class _OnnoScreenState extends State<OnnoScreen> {
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
          title: Text("অন্যান্য"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Loading"),
        )
    );
  }
}
