import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: DonateUs(),
  debugShowCheckedModeBanner: false,
),);

class DonateUs extends StatefulWidget {
  @override
  _SliderExampleState createState() {
    return _SliderExampleState();
  }
}

class _SliderExampleState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          title: Text('Donate Us'),
          centerTitle: true,
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(

                  height: 310,

                  decoration: BoxDecoration(
                    color: Colors.lightBlue[50],
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey[800].withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Infaq is one of the basic term of Quran, which is used in Quran, at almost sixty places."
                        "It is basically pious in the spending In The Way of Allah. 'Noor' App and its developers are working for Islam.To Make or mission succesfull and to support app, donate this project and be a part of this project.",
                      style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify,
                    ),
                  )
              ),
            ),

            SizedBox(height: 15),


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(

                  decoration: BoxDecoration(
                    color: Colors.lightBlue[50],
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey[800].withOpacity(0.5), //color of shadow
                        spreadRadius: 5, //spread radius
                        blurRadius: 7, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),

                  height: 50,
                  width: 340,
                  child: Card(

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Support Us via",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify),
                      )),
                ),
              ),
            ),


            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey[800].withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),

              width: 330,
              height: 80,
              child: Row(

                children: [
                  Container(

                    width: 125,
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Image.asset("assets/bkash.png"),
                        )),
                  ),

                  Container(

                    width: 205,
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("bKash Personal",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify),
                        Text("01312747678",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey[800].withOpacity(0.5), //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),

              width: 330,
              height: 80,
              child: Row(

                children: [
                  Container(

                    width: 125,
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset("assets/nogod.png"),
                        )),
                  ),

                  Container(

                    width: 205,
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("Nagad",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify),
                        Text("01820066662",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black,),textAlign: TextAlign.justify),
                      ],
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}




