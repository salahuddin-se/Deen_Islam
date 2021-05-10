import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'Model.dart';

void main()=>runApp(MaterialApp(
  home: HadithFirstPage(),
  debugShowCheckedModeBanner: false,
));

class HadithFirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<HadithFirstPage> {
  var item;
  void getHttp() async {
    try {
      var response = await Dio().get(
          'https://bn-hadith-api.herokuapp.com/hadiths#'
      );
      print(response.data);
      setState(() {
        final hadith = hadithFromJson(jsonEncode(response.data));
        item=hadith;
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
      backgroundColor: Colors.teal[50],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          title: Text('Hadith'),
          centerTitle: true,
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: item.length,
        itemBuilder: (context, i){
          return ListTile(
            title: Column(
              children: [
                Text(item[i].id.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                Text(item[i].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                Text(item[i].description,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                Text(item[i].references,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                Text(item[i].grade,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),

                SizedBox(height: 50,)

              ],
            ),
          );
        },
      ),
    );
  }
}