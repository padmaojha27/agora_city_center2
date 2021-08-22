import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/residential_screen_widgets.dart';
import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/app_constants.dart';

class ProjectDetails_Amenities extends StatefulWidget {
  ProjectDetails_Amenities_Widget createState() => ProjectDetails_Amenities_Widget();
}

class ProjectDetails_Amenities_Widget extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(Strings.screenTitle_Amenities),

      ),

      body:
      //    Card(
      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            residential_screen_widgets().amenities_row('assets/images/app_icons/pool64.png', 'assets/images/app_icons/yoga64.png', 'assets/images/app_icons/library64.png', Strings.amenitiestext1, Strings.amenitiestext2, Strings.amenitiestext3, Colors.purple,Colors.green[300], Colors.deepOrange),
            residential_screen_widgets().amenities_row('assets/images/app_icons/tennis64.png', 'assets/images/app_icons/salon64.png', 'assets/images/app_icons/gym64.png', Strings.amenitiestext4, Strings.amenitiestext5, Strings.amenitiestext6, Colors.yellow[800],Colors.pinkAccent, Colors.blue[900]),
            residential_screen_widgets().amenities_row('assets/images/app_icons/childrenplay64.png', 'assets/images/app_icons/spa64.png', 'assets/images/app_icons/sauna64.png',Strings.amenitiestext7 , Strings.amenitiestext8, Strings.amenitiestext9, Colors.green[900],Colors.blueGrey[900], Colors.red[900]),
            residential_screen_widgets().amenities_row('assets/images/app_icons/tabletennis64.png', 'assets/images/app_icons/football64.png', 'assets/images/app_icons/snooker64.png', Strings.amenitiestext10, Strings.amenitiestext11, Strings.amenitiestext12, Colors.purple[800],Colors.green[300], Colors.deepOrange),
            residential_screen_widgets().amenities_row('assets/images/app_icons/chess64.png', 'assets/images/app_icons/banquet64.png', 'assets/images/app_icons/guestroom64.png', Strings.amenitiestext13, Strings.amenitiestext14, Strings.amenitiestext15, Colors.yellow[800],Colors.pinkAccent, Colors.blue[900]),
            residential_screen_widgets().amenities_row('assets/images/app_icons/parking64.png', 'assets/images/app_icons/lift64.png', 'assets/images/app_icons/theatre64.png',Strings.amenitiestext16 , Strings.amenitiestext17, Strings.amenitiestext18, Colors.green[900],Colors.blueGrey[900], Colors.red[900]),
            residential_screen_widgets().amenities_row('assets/images/app_icons/foodcourt64.png', 'assets/images/app_icons/outdoor64.png', 'assets/images/app_icons/airconditioner64.png', Strings.amenitiestext19, Strings.amenitiestext20, Strings.amenitiestext21, Colors.purple,Colors.green[300], Colors.deepOrange),
            residential_screen_widgets().amenities_row('assets/images/app_icons/videodoor64.png', 'assets/images/app_icons/jogging64.png', '', Strings.amenitiestext22, Strings.amenitiestext23,"", Colors.yellow[800],Colors.yellow[800], Colors.white),

          ],
        ),
      ),
    );
  }
}
