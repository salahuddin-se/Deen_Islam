import 'dart:async';
import 'dart:ui';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:deenislam/Donate_Us/Donate.dart';

import 'package:deenislam/Namaj/namaj.dart';
import 'package:deenislam/PrayerTime/1st_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/route_manager.dart';

import 'Al_Quran/lib/First.dart';
import 'Community/community.dart';
import 'Hadith/Hadith_1st_page.dart';
import 'Qibla_Direction/Qibla/FirstScreen.dart';
import 'Tasbih/tasbih.dart';


void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //double _currentSliderValue = 20;
  String _timeString;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }
  void _getTime() {
    final String formattedDateTime =
    DateFormat('kk:mm:ss\ndd-MM-yyyy').format(DateTime.now()).toString();
    setState(() {
      _timeString = formattedDateTime;
      print(_timeString);
    });
  }


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      getPages: [
        GetPage(name: '/1st_page', page: () => FirstPage()),
        GetPage(name: '/mainPage', page: () => FirstPart()),
        GetPage(name: '/namaj', page: () => SliderExample()),
        GetPage(name: '/FirstScreen', page: () => Qibla()),
        GetPage(name: '/Hadith_1st_page', page: () => HadithFirstPage()),
        GetPage(name: '/tasbih', page: () => Tasbih()),
        GetPage(name: '/community', page: () => Community()),
        GetPage(name: '/Donate', page: () => DonateUs()),
      ],

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.tealAccent[100],
        backgroundColor: Colors.lightBlue[50],
        //backgroundColor: Colors.teal[50],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(35.0),
          child: AppBar(
            backgroundColor: Colors.lightBlueAccent[200],
            title: Text('An-Noor'),
            centerTitle: true,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 220,
                  width: 335,
                  child: Row(
                   children: [

                     Container(
                       height: 170.0,
                       //color: Colors.cyan[100],
                       //width: 167.5,
                       width: 135,
                       //color: Colors.blue,
                       child: Center(
                         child: Text(
                           _timeString.toString(),
                           textAlign: TextAlign.center,
                           style: TextStyle(
                             fontSize: 23,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(top:10.0),
                       child: Container(
                           //width: 167.5,
                           width: 200.0,
                         //color: Colors.cyan,
                         child: Image.asset("assets/gum.jpg",fit: BoxFit.cover,)
                         ),
                     ),

                   ],
                  ),
                ),
              ),

              SizedBox(height: 10),

              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 85,
                  width: 335,

                  child: Row(
                    children: [

                      InkWell(
                        onTap: (){
                          Get.to(FirstPage());
                        },
                        child: Container(
                          width: 83.75,
                          child: Column(
                            children: [

                              Container(
                                  alignment: Alignment.center,
                                  height: 55,
                                  width:60,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan[100],
                                    borderRadius: BorderRadius.circular(15), //border corner radius

                                  ),

                                  child: Container(
                                      height: 40,
                                      width: 45,
                                      child: Image.asset("assets/watch.png"))
                              ),
                              SizedBox(height: 5.0,),
                              Text("PrayerTime",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),


                      InkWell(
                        onTap:() {
                          Get.to(FirstPart());
                        },

                        child: Container(
                          width: 83.75,
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 55,
                                  width:60,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan[100],
                                    borderRadius: BorderRadius.circular(15), //border corner radius

                                  ),

                                  child: Container(
                                      height: 40,
                                      width: 45,
                                      child: Image.asset("assets/qur.png")
                                  )
                              ),
                              SizedBox(height: 5.0,),
                              Text("Al-Quran",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),



                      InkWell(
                        onTap:() {
                          Get.to(SliderExample());
                        },
                        child: Container(
                          width: 83.75,
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 55,
                                  width:60,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan[100],
                                    borderRadius: BorderRadius.circular(15), //border corner radius

                                  ),

                                  child: Container(
                                      height: 40,
                                      width: 45,
                                      child: Image.asset("assets/namj.png")
                                  )
                              ),
                              SizedBox(height: 5.0,),
                              Text("Namaj",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),


                      InkWell(
                        onTap:() {
                          Get.to(Qibla());
                        },
                        child: Container(
                          width: 83.75,
                          child: Column(
                            children: [

                              Container(
                                  alignment: Alignment.center,
                                  height: 55,
                                  width:60,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan[100],
                                    borderRadius: BorderRadius.circular(15), //border corner radius
                                  ),
                                  child: Container(
                                      height: 40,
                                      width: 45,
                                      child: Image.asset("assets/qib.png")
                                  )
                              ),

                              SizedBox(height: 5.0,),
                              Text("Qibla",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20,),

              SizedBox(
                  width: 335,
                  height: 120.0,
                  child: Carousel(
                      images: [
                        AssetImage('assets/pic13.jpg'),
                        AssetImage('assets/pic0.jpg'),
                        AssetImage('assets/pic3.jpg'),
                        AssetImage('assets/pic4.jpg'),
                        AssetImage('assets/pic5.jpg'),
                        AssetImage('assets/pic6.jpg'),
                        AssetImage('assets/pic8.jpg'),
                        AssetImage('assets/pic9.jpg'),
                        AssetImage('assets/pic10.jpg'),
                        AssetImage('assets/pic12.jpg'),
                      ],
                      autoplay: true,
                      dotSize: 0,
                      dotSpacing: 0,
                      //dotColor: Colors.lightGreenAccent,
                      indicatorBgPadding: 0,
                      //dotBgColor: Colors.purple.withOpacity(0.5),
                      borderRadius: false,
                      moveIndicatorFromBottom: 180.0,
                      overlayShadow: false,
                      autoplayDuration: const Duration(seconds: 4)
                  )
              ),


              SizedBox(height: 30,),


              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 85,
                  width: 335,

                  child: Row(
                    children: [

                      InkWell(
                        onTap:() {
                          Get.to(HadithFirstPage());
                        },
                        child: Container(
                          width: 83.75,
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 55,
                                  width:60,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan[100],
                                    borderRadius: BorderRadius.circular(15), //border corner radius

                                  ),

                                  child: Container(
                                      height: 40,
                                      width: 45,
                                      child: Image.asset("assets/hadit.png"))
                              ),
                              SizedBox(height: 5.0,),
                              Text("Hadith",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),


                      InkWell(
                        onTap:() {
                          Get.to(Tasbih());
                        },
                        child: Container(
                          width: 83.75,
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 55,
                                  width:60,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan[100],
                                    borderRadius: BorderRadius.circular(15), //border corner radius
                                  ),

                                  child: Container(
                                      height: 40,
                                      width: 45,
                                      child: Image.asset("assets/tas.png")
                                  )
                              ),
                              SizedBox(height: 5.0,),
                              Text("Tasbih",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),



                      InkWell(
                        onTap:() {
                          Get.to(Community());
                        },
                        child: Container(
                          width: 83.75,
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 55,
                                  width:60,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan[100],
                                    borderRadius: BorderRadius.circular(15), //border corner radius

                                  ),

                                  child: Container(
                                      height: 40,
                                      width: 45,
                                      child: Image.asset("assets/com.png")
                                  )
                              ),
                              SizedBox(height: 5.0,),
                              Text("Community",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),


                      InkWell(
                        onTap:() {
                          Get.to(DonateUs());
                        },
                        child: Container(
                          width: 83.75,
                          child: Column(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  height: 55,
                                  width:60,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan[100],
                                    borderRadius: BorderRadius.circular(15), //border corner radius

                                  ),

                                  child: Container(
                                      height: 40,
                                      width: 45,
                                      child: Image.asset("assets/don.png"))
                              ),
                              SizedBox(height: 5.0,),
                              Text("Donate Us",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),

                ),
              ),



              SizedBox(height: 25.0,),


            ],
          ),
        ),
      ),
    );
  }
}




