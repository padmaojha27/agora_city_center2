import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class youtube_widget{

  Container get_youtube_widget(String videoid)
{
return Container(
child: YoutubePlayer(
  controller:
YoutubePlayerController(

    initialVideoId: videoid,

  flags: YoutubePlayerFlags(

    hideControls: false,
    controlsVisibleAtStart: false,
    autoPlay: false,
    mute: false,

),

),

  liveUIColor: Colors.amber,

),
  );
}

Row youtube_text_row(String image,String you_tube_title)
{
  return Row(
      children: <Widget>[
        Container(
          width: 50,
          padding: EdgeInsets.only(
              top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
          child: Image.asset(image,
              alignment: Alignment.center),
        ),

        Container(
          width:300,
          margin: EdgeInsets.only(top: 0.0, left: 10.0, bottom: 10.0),
          child: Text(you_tube_title,
            style: TextStyle(color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),

        ),
      ]
  );
}
}