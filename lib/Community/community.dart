import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Community());
}

class Community extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'URL Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'URL Launcher'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _launched;

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }


  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://islamqa.info/bn/';
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          title: Text('Community'),
          centerTitle: true,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Container(
                //color: Colors.grey[850],
                  height: 360,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset("assets/comu.png"),
                  )
              ),

              InkWell(
                onTap: (){
                  setState(() {
                    _launched = _launchInBrowser(toLaunch);
                  }
                  );
                },
                child: Container(
                  color: Colors.lightBlue[200],
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Launch in browser",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),)),
                  width: 200,
                  height: 50,

                ),

              ),
              FutureBuilder<void>(future: _launched, builder: _launchStatus),
            ],
          ),
        ],
      ),
    );
  }
}