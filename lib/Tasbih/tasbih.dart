import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
));

class Tasbih extends StatefulWidget {
  @override
  _BouncingButtonState createState() => _BouncingButtonState();
}
class _BouncingButtonState extends State<Tasbih> with SingleTickerProviderStateMixin {
  double _scale;
  var value = 0;
  AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 100,
      ),
      lowerBound: 0.0,
      upperBound: 0.3,
    )..addListener(() {
      setState(() {});
    });
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            title: Text('Tasbih Count'),
            centerTitle: true,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            //Text(value,style: TextStyle(color: Colors.grey[400],fontSize: 20.0),),
            Text("$value", style: TextStyle(color: Colors.blue,fontSize: 50.0,fontWeight: FontWeight.bold,)),

            SizedBox(
              height: 40.0,
            ),

            Center(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    value++;
                  });
                },
                onTapDown: _tapDown,
                onTapUp: _tapUp,
                child: Transform.scale(
                  scale: _scale,
                  child: _animatedButton(),
                ),
              ),
            ),


            SizedBox(height: 40.0,),


            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 50,
                  width: 100,
                  child: RaisedButton(
                    color: Colors.cyan,
                    onPressed: (){
                      setState((){
                        value = 0;
                      });
                    },
                    child: Text("Reset",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            )
          ],
        ),

    );
  }
  Widget  _animatedButton() {
    return Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Color(0x80000000),
                blurRadius: 12.0,
                offset: Offset(0.0, 5.0),
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff33ccff),
                Color(0xffff99cc),
              ],
            )),
        child: Center(
          child: CircleAvatar(
              radius: 50,
              child: Image.asset("assets/ok.png")),
        )
    );
  }
  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }
  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
  void reset() {
    value = value;
  }
}

