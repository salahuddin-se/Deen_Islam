import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:dio/dio.dart';

import '2nd_page.dart';

void main()=>runApp(MaterialApp(
  home: FirstPage(),
  debugShowCheckedModeBanner: false,
));

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var item;
  void getHttp() async {
    try {
      var response = await Dio().get(
          'https://api.aladhan.com/v1/timingsByAddress/09-03-2015?address=Dubai,UAE&method=8');
      print(response.data);
//   0.username 2.name
      setState(() {
        final prayer = prayerFromJson(jsonEncode(response.data));
        item=prayer;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    getHttp();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return item==null?Center(child: CircularProgressIndicator()):
    Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35.0),
        child: AppBar(
          title: Text('Prayer Time'),
          centerTitle: true,
        ),
      ),

      backgroundColor: Colors.teal[50],
      body: SingleChildScrollView(

        child: Center(
          child: Column(
            children: [

              SizedBox(height: 10),

              Container(
                  color: Colors.grey[850],
                  height: 360,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset("assets/hariken.png"),
                  )
              ),

              SizedBox(height: 25),

              Container(
                  color: Colors.cyan[200],
                  height: 35,
                  width: 260,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Fajr :   ${item.data.timings.fajr} a.m",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),))
              ),
              SizedBox(height: 10),
              Container(
                  color: Colors.cyan[200],
                  height: 35,
                  width: 260,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Sunrise :   ${item.data.timings.sunrise} a.m",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),))
              ),
              SizedBox(height: 10),
              Container(
                  color: Colors.cyan[200],
                  height: 35,
                  width: 260,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Dhuhr :  ${item.data.timings.dhuhr} p.m",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),))
              ),
              SizedBox(height: 10),
              Container(
                  color: Colors.cyan[200],
                  height: 35,
                  width: 260,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Asar :  ${item.data.timings.asr} p.m",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),))
              ),
              SizedBox(height: 10),
              Container(
                  color: Colors.cyan[200],
                  height: 35,
                  width: 260,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Sunset :  ${item.data.timings.sunset} p.m",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),))
              ),
              SizedBox(height: 10),
              Container(
                  color: Colors.cyan[200],
                  height: 35,
                  width: 260,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Maghrib :  ${item.data.timings.maghrib} p.m",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),))
              ),
              SizedBox(height: 10),
              Container(
                  color: Colors.cyan[200],
                  height: 35,
                  width: 260,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Isha :  ${item.data.timings.isha} p.m",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),))
              ),

              SizedBox(height: 15),

            ],
          ),
        ),
      ),

    );
  }
}
