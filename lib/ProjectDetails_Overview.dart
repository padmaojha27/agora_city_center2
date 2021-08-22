import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/utilities/app_constants.dart';
import 'package:agora_city_center/common_widgets/row_card_widget.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/colors.dart';


class ProjectDetails_Overview extends StatefulWidget {
  ProjectDetails_Overview_Widget createState() => ProjectDetails_Overview_Widget();
}

class ProjectDetails_Overview_Widget extends State {
  goBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(Strings.screenTitle_Overview),
      ),
      body:
      SingleChildScrollView(
        child:Container(
          margin:EdgeInsets.all(10),
          child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Row(
                children:[
                row_card_widget().overview_row('assets/images/app_icons/project64.png',Strings.overviewtitle1,Strings.overviewdesc1),
                  row_card_widget().overview_row('assets/images/app_icons/unit64.png',Strings.overviewtitle2,Strings.overviewdesc2),
                      ]
            ),

            Row(
                children:[
                  row_card_widget().overview_row('assets/images/app_icons/tower64.png',Strings.overviewtitle3,Strings.overviewdesc3),
                  row_card_widget().overview_row('assets/images/app_icons/floor64.png',Strings.overviewtitle4,Strings.overviewdesc4),
                ]
            ),

            Row(
                children:[
                  row_card_widget().overview_row('assets/images/app_icons/radar64.png',Strings.overviewtitle5,Strings.overviewdesc5),
                  row_card_widget().overview_row('assets/images/app_icons/location64.png',Strings.overviewtitle6,Strings.overviewdesc6),
                ]
            ),

            Row(
                children:[
                  row_card_widget().overview_row('assets/images/app_icons/price64.png',Strings.overviewtitle7,Strings.overviewdesc7),
                  row_card_widget().overview_row('assets/images/app_icons/status64.png',Strings.overviewtitle8,Strings.overviewdesc8),
                ]
            ),

          ],
        ),
        ),
      ),
    );
  }
}