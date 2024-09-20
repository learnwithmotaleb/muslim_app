import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class NajmajerSomayScreen extends StatefulWidget {
  const NajmajerSomayScreen({super.key});

  @override
  State<NajmajerSomayScreen> createState() => _NajmajerSomayScreenState();
}

class _NajmajerSomayScreenState extends State<NajmajerSomayScreen> {
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
        title: Text("নামাজের সময়"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Container(
                width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("ফরজ নামাজের সময়সুচীঃ",style: TextStyle(
                      fontSize: 20,
                        color: HexColor("#254C27"),
                      fontWeight: FontWeight.bold
                    ),),
                  )),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){}, child: Text('ফজর',style: TextStyle(
                      fontSize: 18,
                      color: HexColor("#254C27"),
                  ),
                  )),
                  IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27") ,)),
                  Text("05:32 - 06: 52")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){}, child: Text('যুহর',style: TextStyle(
                    fontSize: 18,
                    color: HexColor("#254C27"),
                  ),)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27"))),
                  Text("05:32 - 06: 52")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){}, child: Text('আসর',style: TextStyle(
                    fontSize: 18,
                    color: HexColor("#254C27"),
                  ),)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27"))),
                  Text("05:32 - 06: 52")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){}, child: Text('মাগরিব',style: TextStyle(
                    fontSize: 18,
                    color: HexColor("#254C27"),
                  ),)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27"))),
                  Text("05:32 - 06: 52")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){}, child: Text('এশা',style: TextStyle(
                    fontSize: 18,
                    color: HexColor("#254C27"),
                  ),)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27"))),
                  Text("05:32 - 06: 52")
                ],
              ),

              SizedBox(height: 20,),
              Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("নফল নামাজের সময়সুচীঃ",style: TextStyle(
                        fontSize: 20,
                        color: HexColor("#254C27"),
                        fontWeight: FontWeight.bold
                    ),),
                  )),
              SizedBox(height: 20,),
              Row(
                children: [
                   Expanded(
                     child: Text('তাহাজ্জুদ শেষ',style: TextStyle(
                      fontSize: 18,
                      color: HexColor("#254C27"),
                                       ),),
                   ),
                  Expanded(child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27"))))),
                  Expanded(child: Center(child: Text("05:27")))
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text('ইশরাক',style: TextStyle(
                      fontSize: 18,
                      color: HexColor("#254C27"),
                    ),),
                  ),
                  Expanded(child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27"))))),
                  Expanded(child: Center(child: Text("07:08 - 12: 07")))
                ],
              ),
              Row(

                children: [
                  Expanded(
                    child: Text('চাশত',style: TextStyle(
                      fontSize: 18,
                      color: HexColor("#254C27"),
                    ),),
                  ),
                  Expanded(child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27"))))),
                  Expanded(child: Center(child: Text("09:37 - 12:07")))
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text('যাওয়াল শুরু',style: TextStyle(
                      fontSize: 18,
                      color: HexColor("#254C27"),
                    ),),
                  ),
                  Expanded(child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27"))))),
                  Expanded(child: Center(child: Text("12:14")))
                ],
              ),
              Row(

                children: [
                   Expanded(
                     child: Text('আউয়াবীন',style: TextStyle(
                      fontSize: 18,
                      color: HexColor("#254C27"),
                                       ),),
                   ),
                  Expanded(child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27"))))),
                  Expanded(child: Center(child: Text("05:46 - 06:53")))
                ],
              ),
              SizedBox(height: 20,),
              Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  Text("নিষিদ্ধ নামাজের সময়সুচীঃ",style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold
                    ),),
                  )),
              SizedBox(height: 20,),

              Row(
                children: [
                  Expanded(
                    child: Text('সূর্যোদয়কালীন',style: TextStyle(
                      fontSize: 18,
                      color: HexColor("#254C27"),
                    ),),
                  ),
                  Expanded(child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27"))))),
                  Expanded(child: Text("06:53 - 07:07"))
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child:  Text('দুপুর',style: TextStyle(
                      fontSize: 18,
                      color: HexColor("#254C27"),
                    ),),
                  ),
                  Expanded(child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27"))))),
                  Expanded(child: Text("12:08 - 12:13"))
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text('সূর্যাস্তকালীন',style: TextStyle(
                      fontSize: 18,
                      color: HexColor("#254C27"),
                    ),),
                  ),
                  Expanded(child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color:HexColor("#254C27"))))),
                  Expanded(child: Text("05:18 - 05:33"))
                ],
              ),
              SizedBox(height: 30,),
           
            ],
          ),
        ),
      ),
    );
  }
}
