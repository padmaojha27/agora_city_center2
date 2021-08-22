import 'package:flutter/material.dart';
import 'package:agora_city_center/LoginScreen.dart';
import 'package:agora_city_center/HomeScreen.dart';
import 'package:audioplayers/audioplayers_api.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:agora_city_center/utilities/colors.dart';
import 'package:agora_city_center/utilities/app_constants.dart';

import 'package:shared_preferences/shared_preferences.dart';


class SplashScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}


class SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  bool CheckValue;
  getStringValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
     CheckValue = prefs.containsKey('phoneno');
    constants.phoneno = prefs.getString('phoneno');

  }
  
   AudioCache _audioCache;
  AnimationController controller;
  Animation<double> animation;
  Animation<double> animation2;
  AnimationController animationController;



  @override
  void initState() {
    super.initState();
    getStringValuesSF();
    _audioCache = AudioCache(
      prefix: 'assets/sound/',
      fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
    );

    controller = AnimationController(
        duration: const Duration(milliseconds: 7000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation2 = Tween<double>(begin: 200, end: 0).animate(animationController)
      ..addListener(() {
        setState(() {});
      });
    animationController.forward();
    controller.forward();
    _audioCache.play('music.mp3');


    Future.delayed(Duration(seconds: 10), () {

      if(CheckValue){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));

      }
      else {
        Navigator.push(
            context,
            MaterialPageRoute(

              builder: (context) => LoginScreen(),
            ));
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.colorOldPrimaryDark,
      body:
      Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: FadeTransition(
                opacity: animation,
                child : Image.asset('assets/images/app_icons/balajitransparent.png', alignment:Alignment.center,width:250,height:180),
              ),
            ),

            Container(
              child:
              FadeTransition(
                opacity: animation,
                child:Text(
                    'Presents',
                    style: new TextStyle(
                        fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'arial'),
                    textAlign:TextAlign.center),
              ),
            ),

            Container(
              padding: EdgeInsets.all(10.0),
              child : Image.asset('assets/images/app_icons/ganeshji.png', alignment:Alignment.center, height: 100,width: 100),
            ),

            Align(
              alignment: AlignmentDirectional(0,0.7),
              child: Transform.translate(
                offset: Offset(0, animation2.value),
                child:Container(
                  padding: EdgeInsets.all(10.0),
                  child : Image.asset('assets/images/app_icons/agorapng.png', alignment:Alignment.bottomCenter, height: 180,width: 200),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void playRemoteFile() {
    AudioPlayer player = new AudioPlayer();
    player.play('assets/sound/music.mp3');
  }
  /*Future<AudioPlayer> playLocalAsset() async {
    AudioCache cache = new AudioCache();

    return await cache.play('music.mp3');
  }*/
}
