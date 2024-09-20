import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jhijri_picker/jhijri_picker.dart';
import 'package:jhijri/_src/_jHijri.dart';
import 'package:jhijri/jHijri.dart';

class HijiriCalenderScreen extends StatefulWidget {
  const HijiriCalenderScreen({Key? key}) : super(key: key);

  @override
  State<HijiriCalenderScreen> createState() => _HijiriCalenderScreenState();
}

class _HijiriCalenderScreenState extends State<HijiriCalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
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
          centerTitle: true,

          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton.extended(
                backgroundColor: HexColor("#254C27"),
                heroTag: "4",
                onPressed: () async {
                  final dateTime = await showGlobalDatePicker(
                      context: context, pickerType: PickerType.JNormal);
                  if (dateTime != null) {
                    debugPrint(dateTime.toString());
                  }
                },
                tooltip: 'Normal Date',
                icon: const Icon(Icons.date_range_outlined),
                label: Text("Normal"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton.extended(
                backgroundColor: HexColor("#254C27"),
                heroTag: "3",
                onPressed: () async {
                  final dateTime = await showGlobalDatePicker(
                    context: context,
                    startDate: JDateModel(
                        jhijri: JHijri(
                          fYear: 1442,
                          fMonth: 12,
                          fDay: 10,
                        )),
                    selectedDate: JDateModel(jhijri: JHijri.now()),
                    endDate: JDateModel(
                        jhijri: JHijri(
                          fDay: 25,
                          fMonth: 1,
                          fYear: 1460,
                        )),
                    pickerMode: DatePickerMode.day,
                    pickerTheme: Theme.of(context),
                    textDirection: TextDirection.rtl,
                    //locale: const Locale("ar", "SA"),
                    okButtonText: "Ok",
                    cancelButtonText: "Cancel",
                    onOk: (value) {
                      debugPrint(value.toString());
                      Navigator.pop(context);
                    },
                    onCancel: () {
                      Navigator.pop(context);
                    },
                    primaryColor: Colors.blue,
                    calendarTextColor:HexColor("#254C27"),
                    backgroundColor: Colors.white,
                    borderRadius: const Radius.circular(10),
                    buttonTextColor: HexColor("#254C27"),
                    headerTitle: const Center(
                      child: Text(
                        "التقويم الهجري",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                  if (dateTime != null) {
                    debugPrint(dateTime.toString());
                  }
                },
                tooltip: 'Hijri Date',
                icon: const Icon(Icons.date_range_outlined),
                label: Text("Hijri"),
              ),
            ),
          ],
        ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: ListView(
                children: [
                  JGlobalDatePicker(
                    widgetType: WidgetType.JContainer,
                    pickerType: PickerType.JHijri,
                    buttons: const SizedBox(),
                    primaryColor: HexColor("#254C27"),
                    calendarTextColor:HexColor("#254C27"),
                    backgroundColor: Colors.white,
                    borderRadius: const Radius.circular(10),
                    headerTitle:  Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Hijri Calendar",style: TextStyle(
                          fontSize: 16,
                          color: HexColor("#254C27"),
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    startDate: JDateModel(dateTime: DateTime.parse("1984-12-24")),
                    selectedDate: JDateModel(dateTime: DateTime.now()),
                    endDate: JDateModel(dateTime: DateTime.parse("2030-09-20")),
                    pickerMode: DatePickerMode.day,
                    pickerTheme: Theme.of(context),
                    textDirection: TextDirection.rtl,
                    onChange: (val) {
                      debugPrint(val.toString());
                    },
                  ),
                  JGlobalDatePicker(
                    widgetType: WidgetType.JContainer,
                    pickerType: PickerType.JNormal,
                    buttons: const SizedBox(),
                    primaryColor: HexColor("#254C27"),
                    calendarTextColor:HexColor("#254C27"),
                    backgroundColor: Colors.white,
                    borderRadius: const Radius.circular(10),
                    headerTitle:  Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Normal Calendar",style: TextStyle(
                            fontSize: 16,
                            color: HexColor("#254C27"),
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                    startDate: JDateModel(dateTime: DateTime.parse("1984-12-24")),
                    selectedDate: JDateModel(dateTime: DateTime.now()),
                    endDate: JDateModel(dateTime: DateTime.parse("2030-09-20")),
                    pickerMode: DatePickerMode.day,
                    pickerTheme: Theme.of(context),
                    textDirection: TextDirection.rtl,
                    onChange: (val) {
                      debugPrint(val.toString());
                    },
                  ),
                ],
              ))
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}