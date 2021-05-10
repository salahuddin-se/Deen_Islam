//import 'package:audioplayers/audio_cache.dart';
//import 'package:audioplayers/audioplayers.dart';
//import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//
//
//
//import 'Model.dart';
//
//void main() {
//  runApp(MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: MusicApp(),
//    );
//  }
//}
//
//class MusicApp extends StatefulWidget {
//  @override
//  _MusicAppState createState() => _MusicAppState();
//}
//
//class _MusicAppState extends State<MusicApp> {
//  Model getList = Get.arguments;
//  //we will need some variables
//  bool playing = false;
//  IconData playBtn = Icons.play_arrow;
//  String url = "";
//  AudioPlayer _player;
//  AudioCache cache;
//
//  Duration position = new Duration();
//  Duration musicLength = new Duration();
//
//
//  Widget slider() {
//    return Container(
//      width: 300.0,
//      child: Slider.adaptive(
//          activeColor: Colors.blue[800],
//          inactiveColor: Colors.grey[350],
//          value: position.inSeconds.toDouble(),
//          max: musicLength.inSeconds.toDouble(),
//          onChanged: (value) {
//            seekToSec(value.toInt());
//          }),
//    );
//  }
//
//
//  void seekToSec(int sec) {
//    Duration newPos = Duration(seconds: sec);
//    _player.seek(newPos);
//  }
//
//
//  @override
//  void initState() {
//    url = getList.recitation.toString();
//    // TODO: implement initState
//    super.initState();
//    _player = AudioPlayer() ;
//    cache = AudioCache(fixedPlayer:_player);
//
//    // ignore: deprecated_member_use
//    _player.durationHandler = (d) {
//      setState(() {
//        musicLength = d;
//      });
//    };
//
//    // ignore: deprecated_member_use
//    _player.positionHandler = (p) {
//      setState(() {
//        position = p;
//      });
//    };
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Container(
//        width: double.infinity,
//        decoration: BoxDecoration(
//          gradient: LinearGradient(
//              begin: Alignment.topLeft,
//              end: Alignment.bottomRight,
//              colors: [
//                Colors.blue[800],
//                Colors.blue[200],
//              ]),
//        ),
//        child: Padding(
//          padding: EdgeInsets.only(
//            top: 48.0,
//          ),
//          child: Container(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.start,
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: [
//                //Let's add some text title
//                Padding(
//                  padding: const EdgeInsets.only(left: 12.0),
//                  child: Text(
//                    "Music Beats",
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 38.0,
//                      fontWeight: FontWeight.bold,
//                    ),
//                  ),
//                ),
//                Padding(
//                  padding: EdgeInsets.only(left: 12.0),
//                  child: Text(
//                    "Listen to your favorite Music",
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 24.0,
//                      fontWeight: FontWeight.w400,
//                    ),
//                  ),
//                ),
//                SizedBox(
//                  height: 24.0,
//                ),
//                //Let's add the music cover
////                Center(
////                  child: Container(
////                    width: 280.0,
////                    height: 280.0,
////                    decoration: BoxDecoration(
////                        borderRadius: BorderRadius.circular(30.0),
////                        image: DecorationImage(
////                          image: AssetImage("assets/image.jpg"),
////                        )),
////                  ),
////                ),
//
//                SizedBox(
//                  height: 18.0,
//                ),
//                Center(
//                  child: Text(
//                    "Stargazer",
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 32.0,
//                      fontWeight: FontWeight.w600,
//                    ),
//                  ),
//                ),
//                SizedBox(
//                  height: 30.0,
//                ),
//                Expanded(
//                  child: Container(
//                    decoration: BoxDecoration(
//                      color: Colors.white,
//                      borderRadius: BorderRadius.only(
//                        topLeft: Radius.circular(30.0),
//                        topRight: Radius.circular(30.0),
//                      ),
//                    ),
//                    child: Column(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: [
//                        //Let's start by adding the controller
//                        //let's add the time indicator text
//
//                        Container(
//                          width: 500.0,
//                          child: Row(
//                            mainAxisAlignment: MainAxisAlignment.center,
//                            crossAxisAlignment: CrossAxisAlignment.center,
//                            children: [
//                              Text(
//                                "${position.inMinutes}:${position.inSeconds.remainder(60)}",
//                                style: TextStyle(
//                                  fontSize: 18.0,
//                                ),
//                              ),
//                              slider(),
//                              Text(
//                                "${musicLength.inMinutes}:${musicLength.inSeconds.remainder(60)}",
//                                style: TextStyle(
//                                  fontSize: 18.0,
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          crossAxisAlignment: CrossAxisAlignment.center,
//                          children: [
//                            IconButton(
//                              iconSize: 45.0,
//                              color: Colors.blue,
//                              onPressed: () {},
//                              icon: Icon(
//                                Icons.skip_previous,
//                              ),
//                            ),
//
//                            IconButton(
//                              iconSize: 62.0,
//                              color: Colors.blue[800],
//                              onPressed: () {
//                                //here we will add the functionality of the play button
//                                if (!playing) {
//                                  //now let's play the song
//                                  cache.play(url);
//                                  setState(() {
//                                    playBtn = Icons.pause;
//                                    playing = true;
//                                  });
//                                } else {
//                                  _player.pause();
//                                  setState(() {
//                                    playBtn = Icons.play_arrow;
//                                    playing = false;
//                                  });
//                                }
//                              },
//                              icon: Icon(
//                                playBtn,
//                              ),
//                            ),
//
//
//                            IconButton(
//                              iconSize: 45.0,
//                              color: Colors.blue,
//                              onPressed: () {},
//                              icon: Icon(
//                                Icons.skip_next,
//                              ),
//                            ),
//                          ],
//                        )
//                      ],
//                    ),
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Model.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  Model getList = Get.arguments;
  AudioPlayer audioPlayer = AudioPlayer();
  AudioCache cache;
  String url = "";
  Duration duration;
  Duration position;
  IconData playBtn = Icons.play_arrow;
  bool audioState=false;

  initAudio() {
    url = getList.recitation.toString();
    audioPlayer.onDurationChanged.listen((totalduration) {
      setState(() {
        duration = totalduration;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((updatedPosition) {
      setState(() {
        position = updatedPosition;
      });
    });
  }

  seekAudio(Duration time) {
    audioPlayer.seek(time);
  }

  @override
  void initState() {
    super.initState();
    initAudio();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: AppBar(
          backgroundColor: Colors.lightBlue[400],
          title: Text('Audio Surah'),
          centerTitle: true,
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Container(
              color: Colors.grey[850],
              height: 400,

              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset("assets/audio.png"),
              )
          ),

          Expanded(
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40,10,40,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        position == null
                            ? Text('0:00:00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                            : Text(position.toString().split('.').first,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                        duration == null
                            ? Text('0:00:00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                            : Text(duration.toString().split('.').first,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(25,0,25,0),
                    child: slider(),
                  ),
                  IconButton(
                    iconSize: 62.0,
                    color: Colors.blue[800],
                    onPressed: () {
                      //here we will add the functionality of the play button
                      if (!audioState) {
                        //now let's play the song
                        audioPlayer.play(url);
                        setState(() {
                          playBtn = Icons.pause;
                          audioState = true;
                        });
                      } else {
                        audioPlayer.pause();
                        setState(() {
                          playBtn = Icons.play_arrow;
                          audioState = false;
                        });
                      }
                    },
                    icon: Icon(
                      playBtn,
                    ),

                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget slider() {
    return Slider(
      value: position == null ? 0 : position.inMilliseconds.toDouble(),
      activeColor: Colors.blue,

      inactiveColor: Colors.blue.withOpacity(0.3),
      onChanged: (value) {
        seekAudio(Duration(milliseconds: value.toInt()));
      },
      min: 0,
      max: duration == null ? 20 : duration.inMilliseconds.toDouble(),
    );
  }

}





/*

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Model.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  Model getList = Get.arguments;
  AudioPlayer audioPlayer = AudioPlayer();
  String url = "";
  //String url = 'https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4';
  Duration duration;
  Duration position;
  String audioState;

  initAudio() {
    url = getList.recitation.toString();
    audioPlayer.onDurationChanged.listen((totalduration) {
      setState(() {
        duration = totalduration;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((updatedPosition) {
      setState(() {
        position = updatedPosition;
      });
    });

    /*void changeStatus() {
    setState(() {
      isPlaying=!isPlaying;
    });
    if(isPlaying) {
      player.play();
    } else  {
      player.pause();
    }
  }*/
    audioPlayer.onPlayerStateChanged.listen((event) {
      if (event == AudioPlayerState.PLAYING) {
        setState(() {
          audioState = 'playing';
        });
      } else if (event == AudioPlayerState.PAUSED) {
        setState(() {
          audioState = 'paused';
        });
      } else if (event == AudioPlayerState.STOPPED) {
        setState(() {
          audioState = 'stop';
        });
      }
    });
  }

  /*void changeStatus() {
    setState(() {
      isPlaying=!isPlaying;
    });
    if(isPlaying) {
      player.play();
    } else  {
      player.pause();
    }
  }*/

  playAudio() async {
    await audioPlayer.play(url);
  }

  pauseAudio() async {
    await audioPlayer.pause();
  }

  stopAudio() async {
    await audioPlayer.stop();
    setState(() {
      position = null;
    });
  }

  /*GestureDetector(child:
  Icon(isPlaying?Icons.pause_circle_filled_rounded:Icons.play_circle_fill_rounded,color: Colors.black, size: 85),
  behavior: HitTestBehavior.translucent,onTap: () {
  changeStatus();
  },),*/

  seekAudio(Duration time) {
    audioPlayer.seek(time);
  }

  @override
  void initState() {
    super.initState();
    initAudio();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Text(getList.name.toString()),

          Container(
              color: Colors.grey[850],
              height: 400,

              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset("assets/audio.png"),
              )
          ),


          Expanded(
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40,10,40,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        position == null
                            ? Text('0:00:00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                            : Text(position.toString().split('.').first,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

                        duration == null
                            ? Text('0:00:00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                            : Text(duration.toString().split('.').first,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(25,0,25,0),
                    child: slider(),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          iconSize: 40,
                          color: Colors.white,
                          icon: Icon(Icons.play_arrow), onPressed: playAudio
                      ),

                      IconButton(
                          iconSize: 40,
                          color: Colors.white,
                          icon: Icon(Icons.pause), onPressed: pauseAudio),
                    ],
                  ),
                ],
              ),
            ),
          ),


          //IconButton(icon: Icon(Icons.stop), onPressed: stopAudio),
        ],
      ),
    );
  }


  Widget slider() {
    return Slider(
      value: position == null ? 0 : position.inMilliseconds.toDouble(),
      activeColor: Colors.blue,

      inactiveColor: Colors.blue.withOpacity(0.3),
      onChanged: (value) {
        seekAudio(Duration(milliseconds: value.toInt()));
      },
      min: 0,
      max: duration == null ? 20 : duration.inMilliseconds.toDouble(),
    );
  }


}


 */