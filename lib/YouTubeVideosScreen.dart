import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/app_constants.dart';
import 'package:flutter/services.dart';

class YouTubeVideosScreen extends StatefulWidget {
  YouTubeVideosScreenWidget createState() => YouTubeVideosScreenWidget();
}

class YouTubeVideosScreenWidget extends State {
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
                get_youtube_widget(constants.youtubeScreenVideo1),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle1),
                get_youtube_widget(constants.youtubeScreenVideo2),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle2),
                get_youtube_widget(constants.youtubeScreenVideo3),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle3),
                get_youtube_widget(constants.youtubeScreenVideo4),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle4),
                get_youtube_widget(constants.youtubeScreenVideo5),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle5),
                get_youtube_widget(constants.youtubeScreenVideo6),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle6),
                get_youtube_widget(constants.youtubeScreenVideo7),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle7),
                get_youtube_widget(constants.youtubeScreenVideo8),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle8),
                get_youtube_widget(constants.youtubeScreenVideo9),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle9),
                get_youtube_widget(constants.youtubeScreenVideo10),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle10),
                get_youtube_widget(constants.youtubeScreenVideo11),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle11),
                get_youtube_widget(constants.youtubeScreenVideo12),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle12),
                get_youtube_widget(constants.youtubeScreenVideo13),
                youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle13),

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
              title: Text("You Tube Videos"),
            ),
            body:
            //    Card(
            SingleChildScrollView(
              child: Column(
                children: [
                  get_youtube_widget(constants.youtubeScreenVideo1),

                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle1),

                 get_youtube_widget(constants.youtubeScreenVideo2),

                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle2),
                  get_youtube_widget(constants.youtubeScreenVideo3),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle3),
                  get_youtube_widget(constants.youtubeScreenVideo4),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle4),
                  get_youtube_widget(constants.youtubeScreenVideo5),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle5),
                  get_youtube_widget(constants.youtubeScreenVideo6),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle6),
                  get_youtube_widget(constants.youtubeScreenVideo7),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle7),
                  get_youtube_widget(constants.youtubeScreenVideo8),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle8),
                  get_youtube_widget(constants.youtubeScreenVideo9),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle9),
                  get_youtube_widget(constants.youtubeScreenVideo10),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle10),
                  get_youtube_widget(constants.youtubeScreenVideo11),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle11),
                  get_youtube_widget(constants.youtubeScreenVideo12),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle12),
                  get_youtube_widget(constants.youtubeScreenVideo13),
                  youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle13),

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