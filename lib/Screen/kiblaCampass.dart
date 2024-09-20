
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:math' as math;

class KiblaCampass extends StatefulWidget {
  const KiblaCampass({super.key});

  @override
  State<KiblaCampass> createState() => _KiblaCampassState();
}

class _KiblaCampassState extends State<KiblaCampass> {
  bool _hasPermissions = false;

  @override
  void initState() {
    super.initState();
    _fetchPermissionStatus();
  }

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
        title: Text("ক্কিবলা কম্পাস"),
        centerTitle: true,
      ),
        body: Builder(builder: (context) {
          if (_hasPermissions) {
            return _buildCompass();
          } else {
            return _buildPermissionSheet();
          }
        }),
    );
  }


  Widget _buildCompass() {

    return StreamBuilder<CompassEvent>(
      stream: FlutterCompass.events,

      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error reading heading: ${snapshot.error}');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        double? direction = snapshot.data!.heading;

        if (direction == null) {
          return Center(
            child: Text("Device does not have sensors !"),
          );
        }

        return Material(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text("${direction.ceil()}°",style: TextStyle(
                  fontSize: 25,
                  color: HexColor("#254C27"),
                  fontWeight: FontWeight.bold

                ),),
              ),
              SizedBox(height: 50,),
              Transform.rotate(
                angle: (direction * (math.pi / 180) * -1),
                child: Image.asset('assets/images/campass.png'),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildPermissionSheet() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[


        InkWell(
          onTap: (){
            Permission.locationWhenInUse.request().then((ignored) {
              _fetchPermissionStatus();
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: HexColor("#fff"),
              ),

              child: Center(child: Text('Request Permission',style: TextStyle(
                  color:HexColor("#254C27"),
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),)) ,
            ),
          ),
        ),
        SizedBox(height: 10,),
        InkWell(
          onTap: (){
            openAppSettings().then((opened) {
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: HexColor("#fff"),
              ),

              child: Center(child: Text('Open App Settings',style: TextStyle(
                  color:HexColor("#254C27"),
                  fontSize: 18,
                fontWeight: FontWeight.bold
              ),)) ,
            ),
          ),
        ),
      ],
    );
  }

  void _fetchPermissionStatus() {
    Permission.locationWhenInUse.status.then((status) {
      if (mounted) {
        setState(() => _hasPermissions = status == PermissionStatus.granted);
      }
    });
  }
}
