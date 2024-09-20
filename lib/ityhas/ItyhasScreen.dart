import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class ItihasScreen extends StatefulWidget {
  const ItihasScreen({super.key});

  @override
  State<ItihasScreen> createState() => _ItihasScreenState();
}

class _ItihasScreenState extends State<ItihasScreen> {
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
          title: Text("ইতিহাস"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Loading"),
        )
    );
  }
}
