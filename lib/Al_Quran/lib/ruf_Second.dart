//
//
//import 'package:audioplayers/audioplayers.dart';
//import 'package:flutter/material.dart';
//import 'package:get/get.dart';
//import 'package:audioplayers/audio_cache.dart';
//import 'Model.dart';
//
//class Second extends StatefulWidget {
//  @override
//  _SecondState createState() => _SecondState();
//}
//
//class _SecondState extends State<Second> {
//  Model getList = Get.arguments;
//  AudioPlayer audioPlayer = AudioPlayer();
//  AudioCache cache;
//  String url = "";
//  //String url = 'https://thegrowingdeveloper.org/files/audios/quiet-time.mp3?b4869097e4';
//  Duration duration;
//  Duration position;
//  IconData playBtn = Icons.play_arrow;
//  bool audioState=false;
//
//  initAudio() {
//    url = getList.recitation.toString();
//    audioPlayer.onDurationChanged.listen((totalduration) {
//      setState(() {
//        duration = totalduration;
//      });
//    });
//
//    audioPlayer.onAudioPositionChanged.listen((updatedPosition) {
//      setState(() {
//        position = updatedPosition;
//      });
//    });
//
//    /*void changeStatus() {
//    setState(() {
//      isPlaying=!isPlaying;
//    });
//    if(isPlaying) {
//      player.play();
//    } else  {
//      player.pause();
//    }
//  }*/
////    audioPlayer.onPlayerStateChanged.listen((event) {
////      if (event == AudioPlayerState.PLAYING) {
////        setState(() {
////          audioState = 'playing';
////        });
////      } else if (event == AudioPlayerState.PAUSED) {
////        setState(() {
////          audioState = 'paused';
////        });
////      } else if (event == AudioPlayerState.STOPPED) {
////        setState(() {
////          audioState = 'stop';
////        });
////      }
////    });
//  }
//
//
//
//
//  /*GestureDetector(child:
//  Icon(isPlaying?Icons.pause_circle_filled_rounded:Icons.play_circle_fill_rounded,color: Colors.black, size: 85),
//  behavior: HitTestBehavior.translucent,onTap: () {
//  changeStatus();
//  },),*/
//
//  seekAudio(Duration time) {
//    audioPlayer.seek(time);
//  }
//
//  @override
//  void initState() {
//    super.initState();
//    initAudio();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.teal[200],
//      ),
//      body: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          //Text(getList.name.toString()),
//
//          Container(
//              color: Colors.grey[850],
//              height: 400,
//
//              child: Padding(
//                padding: const EdgeInsets.all(50.0),
//                child: Image.asset("assets/audio.png"),
//              )
//          ),
//
//
//          Expanded(
//            child: Container(
//              color: Colors.black,
//              child: Column(
//                children: [
//                  Padding(
//                    padding: const EdgeInsets.fromLTRB(40,10,40,0),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                      children: [
//                        position == null
//                            ? Text('0:00:00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
//                            : Text(position.toString().split('.').first,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//
//                        duration == null
//                            ? Text('0:00:00',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
//                            : Text(duration.toString().split('.').first,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//                      ],
//                    ),
//                  ),
//
//                  Padding(
//                    padding: const EdgeInsets.fromLTRB(25,0,25,0),
//                    child: slider(),
//                  ),
//
//                  /*
//                  //                            IconButton(
////                              iconSize: 62.0,
////                              color: Colors.blue[800],
////                              onPressed: () {
////                                //here we will add the functionality of the play button
////                                if (!playing) {
////                                  //now let's play the song
////                                  cache.play(url);
////                                  setState(() {
////                                    playBtn = Icons.pause;
////                                    playing = true;
////                                  });
////                                } else {
////                                  _player.pause();
////                                  setState(() {
////                                    playBtn = Icons.play_arrow;
////                                    playing = false;
////                                  });
////                                }
////                              },
////                              icon: Icon(
////                                playBtn,
////                              ),
////                            ),
//
//                   */
//
//                  IconButton(
//                    iconSize: 62.0,
//                    color: Colors.blue[800],
//                    onPressed: () {
//                      //here we will add the functionality of the play button
//                      if (!audioState) {
//                        //now let's play the song
//                        audioPlayer.play(url);
//                        setState(() {
//                          playBtn = Icons.pause;
//                          audioState = true;
//                        });
//                      } else {
//                        audioPlayer.pause();
//                        setState(() {
//                          playBtn = Icons.play_arrow;
//                          audioState = false;
//                        });
//                      }
//                    },
//                    icon: Icon(
//                      playBtn,
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ),
//
//
//          //IconButton(icon: Icon(Icons.stop), onPressed: stopAudio),
//        ],
//      ),
//    );
//  }
//
//
//  Widget slider() {
//    return Slider(
//      value: position == null ? 0 : position.inMilliseconds.toDouble(),
//      activeColor: Colors.blue,
//
//      inactiveColor: Colors.blue.withOpacity(0.3),
//      onChanged: (value) {
//        seekAudio(Duration(milliseconds: value.toInt()));
//      },
//      min: 0,
//      max: duration == null ? 20 : duration.inMilliseconds.toDouble(),
//    );
//  }
//
//
//}
//
