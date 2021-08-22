import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/app_constants.dart';
import 'package:flutter/services.dart';

class ConstructionUpdateScreen extends StatefulWidget {
  ConstructionUpdateScreenWidget createState() => ConstructionUpdateScreenWidget();
}

class ConstructionUpdateScreenWidget extends State {
  String currVideo;Orientation or;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: OrientationBuilder(builder:
          (BuildContext context, Orientation orientation) {
        if (orientation == Orientation.landscape) {
          or = Orientation.landscape;
          return Scaffold(
            body:
            SingleChildScrollView(
              child: Column(
                children: [
                  get_youtube_widget(constants.constructionUpdateVideo1),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle1),
                  get_youtube_widget(constants.constructionUpdateVideo2),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle2),
                  get_youtube_widget(constants.constructionUpdateVideo3),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle3),
                  get_youtube_widget(constants.constructionUpdateVideo4),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle4),
                  get_youtube_widget(constants.constructionUpdateVideo5),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle5),
                  get_youtube_widget(constants.constructionUpdateVideo6),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle6),
                  get_youtube_widget(constants.constructionUpdateVideo7),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle7),
                  get_youtube_widget(constants.constructionUpdateVideo8),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle8),

                ],
              ),
            ),
          );
        }
        else
        {
          or = Orientation.portrait;
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              title: Text("Construction Updates"),

            ),
            body:
            //    Card(
            SingleChildScrollView(
              child: Column(
                children: [
                  get_youtube_widget(constants.constructionUpdateVideo1),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle1),
                  get_youtube_widget(constants.constructionUpdateVideo2),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle2),
                  get_youtube_widget(constants.constructionUpdateVideo3),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle3),
                  get_youtube_widget(constants.constructionUpdateVideo4),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle4),
                  get_youtube_widget(constants.constructionUpdateVideo5),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle5),
                  get_youtube_widget(constants.constructionUpdateVideo6),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle6),
                  get_youtube_widget(constants.constructionUpdateVideo7),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle7),
                  get_youtube_widget(constants.constructionUpdateVideo8),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.constructiontitle8),

                ],
              ),
            ),
          );
        }

      }),
    );
  }

  Future<bool> _onWillPop()
  {
    if(or==Orientation.landscape) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }
    else
    {
      Navigator.pop(context);
    }
  }

  Container get_youtube_widget(String videoid)
  {
    return Container(
      child:
      YoutubePlayer(
        controller:
        YoutubePlayerController(
          initialVideoId: videoid,
          flags: YoutubePlayerFlags(
            hideControls: false,
            controlsVisibleAtStart: true,
            autoPlay: false,
            mute: false,
          ),
        ),
        liveUIColor: Colors.amber,
      ),
    );
  }
}


