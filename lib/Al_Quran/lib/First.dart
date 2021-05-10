
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'Model.dart';
import 'SecondPage.dart';

class FirstPart extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<FirstPart> {

  List<Model> listResponse;

  Future fetchData() async {
    var url = Uri.parse(
        'https://raw.githubusercontent.com/penggguna/QuranJSON/master/quran.json');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        listResponse = modelFromJson(response.body);
      });
    } else {
      Get.snackbar('Api error', 'Api error');
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: PreferredSize(

        preferredSize: Size.fromHeight(45.0),
        child: AppBar(
          backgroundColor: Colors.lightBlue[400],
          title: Text('Audio Surah'),
          centerTitle: true,
        ),
      ),

      body: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: listResponse == null ? 0 : listResponse.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {
                      Get.to(Second(), arguments: listResponse[index]);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          listResponse[index].nameTranslations.ar.toString(),
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          listResponse[index].name.toString(),
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            );
          }
          ),
    );
  }
}


// listResponse[index].nameTranslations.ar.toString(),

/*
Text(
                          listResponse[index].name.toString(),
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
 */