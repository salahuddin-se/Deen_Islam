import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _currentSliderValue = 20;

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.tealAccent[100],
        //backgroundColor: Colors.lightBlue[50],
        backgroundColor: Colors.teal[50],
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(5.0),
            child: AppBar(
              //automaticallyImplyLeading: false, // hides leading widget
            )
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 220,
                  width: 340,
                  child: Row(
                   children: [

                     Container(
                       width: 170.0,
                       //color: Colors.blue,
                     ),
                     Container(
                       width: 170.0,
                       //color: Colors.cyan,
                       child: Image.asset("assets/mos.png")
                       ),

                   ],
                  ),

                ),
              ),

              SizedBox(height: 10),

              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 80,
                  width: 340,

                  child: Row(
                    children: [

                      InkWell(
                        onTap:() {
                          print("Hi");
                        },
                        child: Container(
                          width: 85,
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
                              Text("Prayer Time",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),


                      InkWell(
                        onTap:() {
                          print("Hi");
                        },

                        child: Container(
                          width: 85,
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
                                      child: Image.asset("assets/qur.png"))
                              ),
                              SizedBox(height: 5.0,),
                              Text("Al-Quran",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),



                      InkWell(
                        onTap:() {
                          print("Hi");
                        },
                        child: Container(
                          width: 85,
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
                          print("Hi");
                        },
                        child: Container(
                          width: 85,
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
                                      child: Image.asset("assets/qib.png"))
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



              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 80,
                  width: 340,

                  child: Row(
                    children: [

                      InkWell(
                        onTap:() {
                          print("Hi");
                        },
                        child: Container(
                          width: 85,
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
                          print("Hi");
                        },
                        child: Container(
                          width: 85,
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
                                      child: Image.asset("assets/tasbih.png"))
                              ),
                              SizedBox(height: 5.0,),
                              Text("Tasbih",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),



                      InkWell(
                        onTap:() {
                          print("Hi");
                        },
                        child: Container(
                          width: 85,
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
                                      child: Image.asset("assets/com.png"))
                              ),
                              SizedBox(height: 5.0,),
                              Text("Community",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),


                      InkWell(
                        onTap:() {
                          print("Hi");
                        },
                        child: Container(
                          width: 85,
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
                                      child: Image.asset("assets/dua.png"))
                              ),
                              SizedBox(height: 5.0,),
                              Text("Dua",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),)

                            ],
                          ),
                        ),
                      ),


                    ],
                  ),

                ),
              ),



              SizedBox(height: 25.0,),


              Container(

                width: 340,
                decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  borderRadius: BorderRadius.circular(10), //border corner radius

                ),

                //color: Colors.cyan[50],
                height: 35.0,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10,0,0,2),
                    child: Text(
                      " Prayer Tracker",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),
                    ),
                  ),
                ),
              ),


              SizedBox(
                height: 20,
              ),


              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 340,
                  height: 40,

                  child: Row(
                    children: [

                      Container(
                        //color: Colors.lightBlue[50],
                        width: 64,
                        decoration:BoxDecoration(
                          color: Colors.cyan[100],
                          border: Border.all(
                              width: 3.0
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10.0) //                 <--- border radius here
                          ),
                        ),
                        //color: Colors.lightBlue[50],

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:4.0),
                              child: Container(
                                width:15,
                                child: Checkbox(
                                  value: _value,
                                  onChanged: (value) {

                                  },
                                ),
                              ),
                            ),
                            Container(
                                width: 30.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text("Faj",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                                )),
                          ],
                        ),
                      ),


                      SizedBox(width: 5,),

                      Container(
                        //color: Colors.lightBlue[50],
                        width: 64,
                        decoration:BoxDecoration(
                          color: Colors.cyan[100],
                          border: Border.all(
                              width: 3.0
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10.0) //                 <--- border radius here
                          ),
                        ),
                        //color: Colors.lightBlue[50],

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:4.0),
                              child: Container(
                                width:15,
                                child: Checkbox(
                                  value: _value,
                                  onChanged: (value) {

                                  },
                                ),
                              ),
                            ),
                            Container(
                                width: 30.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(left:3.0),
                                  child: Text("Dhu",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                                )),
                          ],
                        ),
                      ),

                      SizedBox(width: 5,),

                      Container(
                        //color: Colors.lightBlue[50],
                        width: 64,
                        decoration:BoxDecoration(
                          color: Colors.cyan[100],
                          border: Border.all(
                              width: 3.0
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10.0) //                 <--- border radius here
                          ),
                        ),
                        //color: Colors.lightBlue[50],

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:4.0),
                              child: Container(
                                width:15,
                                child: Checkbox(
                                  value: _value,
                                  onChanged: (value) {

                                  },
                                ),
                              ),
                            ),
                            Container(
                                width: 30.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text("Asr",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                                )),
                          ],
                        ),
                      ),


                      SizedBox(width: 5,),

                      Container(
                        //color: Colors.lightBlue[50],
                        width: 64,
                        decoration:BoxDecoration(
                          color: Colors.cyan[100],
                          border: Border.all(
                              width: 3.0
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10.0) //                 <--- border radius here
                          ),
                        ),
                        //color: Colors.lightBlue[50],

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:3.0),
                              child: Container(
                                width:15,
                                child: Checkbox(
                                  value: _value,
                                  onChanged: (value) {

                                  },
                                ),
                              ),
                            ),
                            Container(
                                width: 30.0,
                                child: Padding(
                                  padding: const EdgeInsets.only(left:3.0),
                                  child: Text("Mag",style: TextStyle(fontSize: 12.5,fontWeight: FontWeight.bold,color: Colors.black),),
                                )),
                          ],
                        ),
                      ),


                      SizedBox(width: 5,),

                      Container(
                        //color: Colors.lightBlue[50],
                        width: 64,
                        decoration:BoxDecoration(
                          color: Colors.cyan[100],
                          border: Border.all(
                              width: 3.0
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10.0) //                 <--- border radius here
                          ),
                        ),
                        //color: Colors.lightBlue[50],

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:4.0),
                              child: Container(
                                width:15,
                                child: Checkbox(
                                  value: _value,
                                  onChanged: (value) {

                                  },
                                ),
                              ),
                            ),
                            Container(
                                width: 30.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text("Isa",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
                                )),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),


              SizedBox(height: 10,),


              Container(

                decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  borderRadius: BorderRadius.circular(15), //border corner radius

                ),

                //color: Colors.lightBlue[50],
                width: 340.0,
                //height: 15.0,
                child:SliderTheme(
                  data: SliderThemeData(
                    // thumbColor: Colors.white,
                    // valueIndicatorColor: Colors.teal,
                    //overlayColor: Colors.amber,
                    minThumbSeparation: 150,

                    trackHeight: 20.0,

                  ),
                  child: Slider(
                  value: _currentSliderValue,
                  min: 0,
                  max: 100,
                  divisions: 20,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
                ),
              ),



              SizedBox(
                height: 30.0,
              ),

              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 200,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Colors.cyan[100],
                    borderRadius: BorderRadius.circular(25), //border corner radius

                  ),
//                decoration:BoxDecoration(
//                  color: Colors.lightBlue[50],
//
//                  borderRadius: BorderRadius.all(
//                      Radius.circular(25.0) //                 <--- border radius here
//                  ),
//                ),
                ),
              ),


              SizedBox(height: 20,)

            ],
          ),
        ),
      ),
    );
  }
}

