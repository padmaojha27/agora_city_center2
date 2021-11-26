import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/residential_screen_widgets.dart';
import 'package:agora_city_center/common_widgets/row_card_widget.dart';
import 'package:agora_city_center/common_widgets/top_bar.dart';
import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/utilities/app_constants.dart';
import 'package:agora_city_center/utilities/colors.dart';

import 'package:agora_city_center/common_widgets/common_widgets.dart';


class TwoBHKScreen extends StatefulWidget {
  TwoBHKScreenWidget createState() => TwoBHKScreenWidget();
}

class TwoBHKScreenWidget extends State {
  String text, subject;

  goBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:        top_bar().get_app_bar("2 BHK",context),

      body:
      //    Card(
      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            youtube_widget().get_youtube_widget(constants.res_2bhk_ScreenVideoId),
            youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', "Residential Project - Shree Balaji Group"),

            Container(
                margin: const EdgeInsets.only(left: 0.0, right: 0.0,bottom:0.0),
                child: Divider(
                  color: Colors.grey,
                  height: 0,
                )),
            row_card_widget().row_type4("NA/NOC \n Title CLear","BOOK NOW","USP Of \n Residential",context,false,true,false,false,false,true),

            row_card_widget().row_type2("30%","At Time of Booking","30%","After 6 Month of Booking","30%","At Structure Complete","10%","On Final Possession"),

            Container(
            color:colors.grey,
              child:
              residential_screen_widgets().row1("2bhk",context),
            ),
            row_card_widget().heading_row("3rd Floor"),

   //         row_card_widget().child_row('assets/images/app_icons/club.png'," Club House"," 2,10,000 Sq.Ft. Total Area"," 1,00,000 Sq.Ft. Under Cover &"," 1,10,000 Sq.Ft. Open To Sky","42+ Amenities","y",'assets/plans/clubhouse.pdf',context),
        Container(
          color:colors.grey,
          child:
          row_card_widget().club_row(context,'assets/plans/clubhouse.pdf','assets/images/app_icons/club.png'," Club House"," 2,10,000 Sq.Ft. Total Area"," 1,00,000 Sq.Ft. Under Cover &"," 1,10,000 Sq.Ft. Open To Sky","With A To Z Facilities","42+ Amenities"),
        ),
            row_card_widget().heading_row("4th To 14th Floor - A,B, C Wing"),

        Container(
          color:colors.grey,
          child:
          common_widgets().row_item('assets/images/app_icons/fplan.png',"Typical Layout","Sketch Plan",'assets/images/app_icons/terrace.png',"Layout Plan with","Terrace Flats",'assets/images/app_icons/splan.png',"Typical Unit","Floor Plan","2bhk",context),
        ),
           // row_card_widget().child_row('assets/images/app_icons/floorplan.png',"Unit Plan with Terrace"," 963.56Sq. Ft",""," Rs.5500/- Per Sq.Ft.","78","y",'assets/plans/twobhkunitplan.pdf',context),
        Container(
          color:colors.grey,
          child:
          row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"Unit Plan with Terrace"," 963.56Sq. Ft"," Rs.6500/- Per Sq.Ft.","78",'assets/plans/twobhkunitplan.pdf',context),
        ),
            row_card_widget().heading_row("2 BHK Homes With "),

            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("Air Conditioner in all rooms ",
                style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("Beds in both rooms",
                style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("Wardrobe ",
                style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("Video Door Phone",
                style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("Modular Kitchen",
                style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("Branded Fittings",
                style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
         ],
        ),
      ),
    );
  }
}
