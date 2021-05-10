import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(

  home: SliderExample(),

  debugShowCheckedModeBanner: false,

),);

class SliderExample extends StatefulWidget {
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
            title: Text('Namaj Surah'),
            centerTitle: true,
          ),
        ),

        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [

                Container(
                  color: Colors.white,
                    width: 335,
                    //color: Colors.grey[850],
                    height: 300,
                    child: Image.asset("assets/sana.jpg")
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 350,
                    child: Image.asset("assets/attahiatu.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 400,
                    child: Image.asset("assets/ibrahim.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 300,
                    child: Image.asset("assets/masura.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 450,
                    child: Image.asset("assets/kunut.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 400,
                    child: Image.asset("assets/fatiha.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 350,
                    child: Image.asset("assets/lahab.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 300,
                    child: Image.asset("assets/kuraish.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 250,
                    child: Image.asset("assets/kawser.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 350,
                    child: Image.asset("assets/kafirun.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 300,
                    child: Image.asset("assets/ikhlas.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 380,
                    child: Image.asset("assets/fil.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 450,
                    child: Image.asset("assets/atteen.jpg",fit: BoxFit.cover,)
                ),
                SizedBox(height: 10,),
                Container(
                    width: 335,
                    //color: Colors.grey[850],
                    height: 300,
                    child: Image.asset("assets/asar.jpg",fit: BoxFit.cover,)
                ),



              ],
            ),
          ),
        )

    );
  }
}




