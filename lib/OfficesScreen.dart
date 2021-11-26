import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/row_card_widget.dart';
import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/common_widgets/top_bar.dart';
import 'package:agora_city_center/utilities/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:agora_city_center/utilities/gesture_handler.dart';
import 'package:agora_city_center/utilities/colors.dart';




class OfficeScreen extends StatefulWidget {
  OfficesScreenWidget createState() => OfficesScreenWidget();
}

class OfficesScreenWidget extends State {
  int currentPos = 0;
  goBackToPreviousScreen(BuildContext context){
    Navigator.pop(context);
  }

  String text, subject;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar:
        top_bar().get_app_bar("Offices",context),
      body:
      //    Card(
      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [

            youtube_widget().get_youtube_widget(constants.officesScreenVideoId),

            Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    padding: EdgeInsets.only(top:10.0,left:10.0,right:10.0,bottom:10.0),
                    child : Image.asset('assets/images/app_icons/youtube.png', alignment:Alignment.center),
                  ),

                  Container(
                    margin: EdgeInsets.only(top : 0.0,left : 10.0,bottom:10.0),
                    child:   Text("Corporate Offices - Shree Balaji Group",
                      style: TextStyle(color: CupertinoColors.systemGrey, fontSize: 14,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),

                  ),
                ]
            ),
            Container(
                margin: const EdgeInsets.only(left: 0.0, right: 0.0),
                child: Divider(
                  color: Colors.grey,
                  height: 0,
                )),

            row_card_widget().row_type4("NA/NOC \n Title Clear", "Book Now", "USP of \n Corporate Office",context,false,true,false,true,false,false),

            row_card_widget().row_type2("40%","At Time Of Booking","40%","After 6 Months Of Booking","20%","On Final Possession","",""),

            Container(
              alignment: Alignment.centerLeft,
              color:colors.colorPrimary,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("3rd Floor",
                style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),

            ),
            //child_row('assets/images/club.png'," Club House"," 2,10,000 Sq.Ft. Total Area"," 1,00,000 Sq.Ft. Under Cover &"," 1,10,000 Sq.Ft. Open To Sky","42+ Amenities"),

   // row_card_widget().child_row('assets/images/app_icons/club.png'," Club House"," 2,10,000 Sq.Ft. Total Area"," 1,00,000 Sq.Ft. Under Cover &"," 1,10,000 Sq.Ft. Open To Sky","42+ Amenities","","",context),
            row_card_widget().club_row(context,'assets/plans/clubhouse.pdf','assets/images/app_icons/club.png'," Club House"," 2,10,000 Sq.Ft. Total Area"," 1,00,000 Sq.Ft. Under Cover &"," 1,10,000 Sq.Ft. Open To Sky","With A To Z Facilities","42+ Amenities"),

            Container(
              alignment: Alignment.centerLeft,
              color:colors.colorPrimary,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("5th Floor To 16th Floor",
                style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),

//            row_card_widget().child_row('assets/images/app_icons/floorplan.png'," 5th Floor"," 769.64 Sq.Ft. - 1192.5 Sq.Ft."," With Garden"," Rs.7000/- Per Sq.Ft.","20 Offices","y",'assets/plans/5floor.pdf',context),
            row_card_widget().child_row_off('assets/images/app_icons/floorplan.png'," 5\u1d57\u02b0 Floor"," 769.64 Sq.Ft. - 1192.5 Sq.Ft."," With Garden"," Rs.7500/- Per Sq.Ft.","20 Offices",'assets/plans/5floor.pdf',context),
            row_card_widget().child_row_off('assets/images/app_icons/floorplan.png'," 6\u1d57\u02b0 Floor"," 832.24 Sq.Ft. - 1398.81 Sq.Ft."," With & Without Garden"," Rs.7500/- Per Sq.Ft.","20 Offices",'assets/plans/6floor.pdf',context),
            row_card_widget().child_row_off('assets/images/app_icons/floorplan.png'," 7\u1d57\u02b0 Floor"," 754.79 Sq.Ft. - 1398.81 Sq.Ft."," With & Without Garden"," Rs.7500/- Per Sq.Ft.","20 Offices",'assets/plans/7floor.pdf',context),
            row_card_widget().child_row_off('assets/images/app_icons/floorplan.png'," 8\u1d57\u02b0 Floor", " 650.8 Sq.Ft. - 1398.71 Sq.Ft."," With & Without Garden"," Rs.7500/- Per Sq.Ft.","20 Offices",'assets/plans/8floor.pdf',context),
            row_card_widget().child_row_off('assets/images/app_icons/floorplan.png'," 9\u1d57\u02b0 Floor"," 926.96 Sq.Ft. - 1448.69 Sq.Ft."," With & Without Garden"," Rs.7500/- Per Sq.Ft.","16 Offices",'assets/plans/9floor.pdf',context),
            row_card_widget().child_row_off('assets/images/app_icons/floorplan.png'," 10\u1d57\u02b0 Floor"," 926.96 Sq.Ft.- 1398.81 Sq.Ft."," With & Without Garden"," Rs.7500/- Per Sq.Ft.","16 Offices",'assets/plans/10floor.pdf',context),
            row_card_widget().child_row_off('assets/images/app_icons/floorplan.png'," 11\u1d57\u02b0 Floor"," 926.16 Sq.Ft.- 1398.81 Sq.Ft."," With & Without Garden"," Rs.9500/- Per Sq.Ft.","16 Offices",'assets/plans/11floor.pdf',context),
            row_card_widget().child_row_off('assets/images/app_icons/floorplan.png'," 12\u1d57\u02b0 Floor"," 870.57 Sq.Ft.- 1399.13 Sq.Ft."," With & Without Garden"," Rs.9500/- Per Sq.Ft.","16 Offices",'assets/plans/12floor.pdf',context),
            row_card_widget().child_row_off('assets/images/app_icons/floorplan.png'," 13\u1d57\u02b0 Floor"," 611.37 Sq.Ft.- 1399.13 Sq.Ft."," With & Without Garden"," Rs.9500/- Per Sq.Ft.","16 Offices",'assets/plans/13floor.pdf',context),
            row_card_widget().child_row_off('assets/images/app_icons/floorplan.png'," 14\u1d57\u02b0 Floor"," 926.96 Sq.Ft.- 1398.81 Sq.Ft."," With & Without Garden"," Rs.9500/- Per Sq.Ft.","12 Offices",'assets/plans/14floor.pdf',context),
            row_card_widget().child_row_off('assets/images/app_icons/floorplan.png'," 15\u1d57\u02b0 Floor"," 901.02 Sq.Ft.- 1398.79 Sq.Ft."," With & Without Garden"," Rs.9500/- Per Sq.Ft.","12 Offices",'assets/plans/15floor.pdf',context),
            row_card_widget().child_row_off('assets/images/app_icons/floorplan.png'," 16\u1d57\u02b0 Floor"," 506.63 Sq.Ft.- 1398.79 Sq.Ft."," With & Without Garden"," Rs.9500/- Per Sq.Ft.","12 Offices",'assets/plans/16floor.pdf',context),

            Container(

              margin: EdgeInsets.only(top : 10.0,left : 0.0),

            ),
          ],
        ),
      ),);
  }
}
