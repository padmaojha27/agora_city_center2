import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/utilities/app_constants.dart';
import 'package:flutter/services.dart';

class VideoViewScreen extends StatefulWidget {
  VideoViewScreenWidget createState() => VideoViewScreenWidget();

}

class VideoViewScreenWidget extends State{
goBackToPreviousScreen(BuildContext context){
  Navigator.pop(context);
}

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
       // Center(
            youtube_widget().get_youtube_widget(constants.youtubeScreenVideo9),
       // ),
      );

  }

}