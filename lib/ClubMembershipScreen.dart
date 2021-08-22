import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/row_card_widget.dart';
import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/common_widgets/top_bar.dart';
import 'package:agora_city_center/utilities/app_constants.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/colors.dart';

import 'package:agora_city_center/utilities/gesture_handler.dart';
import 'package:flutter/cupertino.dart';

class ClubMembershipScreen extends StatefulWidget {
  ClubMembershipScreenWidget createState() => ClubMembershipScreenWidget();
}

class ClubMembershipScreenWidget extends State {
  goBackToPreviousScreen(BuildContext context){
    Navigator.pop(context);
  }

  String text, subject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      top_bar().get_app_bar("Club Membership",context),
      body:
      //    Card(
      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            youtube_widget().get_youtube_widget(constants.clubMembershipVideoId),
            youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', Strings.youtubetitle7),
            Container(
                margin: const EdgeInsets.only(left: 0.0, right: 0.0),
                child: Divider(
                  color: Colors.grey,
                  height: 0,
                )),

            row_card_widget().row_type4("NA/NOC\nTitle Clear", "Book Now", "Sample House \nReady",context,false,true,true,false,false,false),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("Vadodra's 1st Largest and Highest\nNext Gen Club with 42+ World Class\n Amenities",
                style: TextStyle(color: colors.colorPrimaryDark, fontSize: 20,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

            ),


            Container(
              alignment: Alignment.centerLeft,
              color:colors.colorPrimaryDark,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("3rd Floor",
                style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),

            ),

        Container(
          color:colors.gray,
          child:      row_card_widget().club_row(context,'assets/plans/clubhouse.pdf','assets/images/app_icons/club.png'," Club House"," 2,10,000 Sq.Ft. Total Area"," 1,00,000 Sq.Ft. Under Cover &"," 1,10,000 Sq.Ft. Open To Sky","With A To Z Facilities","42+ Amenities"),
        ),

            Container(
              alignment: Alignment.centerLeft,
              color:colors.colorPrimaryDark,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("Club Membership Plans",
                style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),

         //   row_card_widget().child_row('assets/images/app_icons/member.png',"Corporate Membership","Max 4 Persons","Calls To Get Price","","1 Year","","",context),

            Container(
              color:colors.gray,
              child:Column(
          children: [
            row_card_widget().child_row_club('assets/images/app_icons/member.png',"Corporate Membership","Max 4 Persons","Calls To Get Price","1 Year",context),
            row_card_widget().child_row_club('assets/images/app_icons/member.png',"Silver Membership","2 Adults + 2 Children under 18 Years","Calls To Get Price","2 Years",context),
            row_card_widget().child_row_club('assets/images/app_icons/member.png',"Gold Membership","2 Adults + 2 Children under 18 Years","Calls To Get Price","5 Years",context),
            row_card_widget().child_row_club('assets/images/app_icons/member.png',"Diamond Membership","2 Adults +2 Children under 18 Years","Calls To Get Price","10 Years",context),
            row_card_widget().child_row_club('assets/images/app_icons/member.png',"Premium Membership","2 Adults +2 Children under 18 Years","Calls To Get Price","20 Years",context),
],
        ),
            ),
            Container(
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
            ),
          ],
        ),
      ),);
  }
}
