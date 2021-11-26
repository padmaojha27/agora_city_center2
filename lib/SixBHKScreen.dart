import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/residential_screen_widgets.dart';
import 'package:agora_city_center/common_widgets/row_card_widget.dart';
import 'package:agora_city_center/common_widgets/top_bar.dart';
import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/utilities/app_constants.dart';
import 'package:agora_city_center/utilities/colors.dart';

import 'package:agora_city_center/common_widgets/common_widgets.dart';


class SixBHKScreen extends StatefulWidget {
  SixBHKScreenWidget createState() => SixBHKScreenWidget();
}

class SixBHKScreenWidget extends State {
  String text, subject;

  goBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:        top_bar().get_app_bar("6 BHK",context),

      body:
      //    Card(
      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            youtube_widget().get_youtube_widget(constants.res_6bhk_ScreenVideoId),
            youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', "2/3/4/5/6 BHK Ultra Luxury Flats & Sky Villas"),

            Container(
                margin: const EdgeInsets.only(left: 0.0, right: 0.0,bottom:0.0),
                child: Divider(
                  color: Colors.grey,
                  height: 0,
                )),
            row_card_widget().row_type4("NA/NOC \nTitle CLear","BOOK NOW","USP Of \nResidential",context,false,true,false,false,false,true),

            row_card_widget().row_type2("30%","At Time of Booking","30%","After 6 Month of Booking","30%","At Structure Complete","10%","On Final Possession"),
        Container(
          color:colors.grey,
          child:
            residential_screen_widgets().row1("6bhk",context),
        ),
        Container(
          color:colors.grey,
          child:
            common_widgets().row_item('assets/images/app_icons/fplan.png',"Typical Layout","Sketch Plan",'assets/images/app_icons/terrace.png',"Layout Plan with","Terrace Flats",'',"","","6bhk",context),
        ),
          row_card_widget().heading_row("3rd Floor"),
        //    row_card_widget().child_row('assets/images/app_icons/club.png'," Club House"," 2,10,000 Sq.Ft. Total Area"," 1,00,000 Sq.Ft. Under Cover &"," 1,10,000 Sq.Ft. Open To Sky","42+ Amenities","y",'assets/plans/clubhouse.pdf',context),
        Container(
          color:colors.grey,
          child:
            row_card_widget().club_row(context,'assets/plans/clubhouse.pdf','assets/images/app_icons/club.png'," Club House"," 2,10,000 Sq.Ft. Total Area"," 1,00,000 Sq.Ft. Under Cover &"," 1,10,000 Sq.Ft. Open To Sky","With A To Z Facilities","42+ Amenities"),
        ),
            row_card_widget().heading_row("15th Floor - D,E,F Wing"),
        Container(
          color:colors.grey,
          child:
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"Unit Plan - LOWER PENT HOUSE With SERVANT ROOM","2100.70 Sq.Ft"," Rs.7500/- Per Sq.Ft.","3",'assets/plans/sixbhk1.pdf',context),
        ),
          row_card_widget().heading_row("16th Floor - D,E,F Wing"),
        Container(
          color:colors.grey,
          child:
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"Unit Plan - UPPER PENT HOUSE With TERRACE","1644.67 Sq.Ft"," Rs.7500/- Per Sq.Ft.","3",'assets/plans/sixbhk2.pdf',context),
        ),
          ],
        ),
      ),
    );
  }
}
