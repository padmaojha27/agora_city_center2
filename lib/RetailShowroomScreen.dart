import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/common_widgets.dart';
import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/common_widgets/top_bar.dart';
import 'package:agora_city_center/common_widgets/row_card_widget.dart';
import 'package:agora_city_center/utilities/app_constants.dart';
import 'package:agora_city_center/utilities/colors.dart';

class RetailShowroomScreen extends StatefulWidget {
  RetailShowroomScreenWidget createState() => RetailShowroomScreenWidget();
}

class RetailShowroomScreenWidget extends State {
  int currentPos = 0;
  String text, subject;
  goBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar:top_bar().get_app_bar("Retail / Shops",context),
        body:
        //    Card(
        SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  youtube_widget().get_youtube_widget(constants.retail_shopsScreenVideoId),
                  Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          padding: EdgeInsets.only(top:10.0,left:10.0,right:10.0,bottom:10.0),
                          child : Image.asset('assets/images/app_icons/youtube.png', alignment:Alignment.center),
                        ),

                        Container(
                          margin: EdgeInsets.only(top : 0.0,left : 10.0,bottom:10.0),
                          child:   Text("Retail Spaces - Shree Balaji Group",
                            style: TextStyle(color: Colors.grey, fontSize: 14,fontWeight: FontWeight.bold),
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

                  row_card_widget().row_type4("NA/NOC \n Title CLear","BOOK NOW","USP Of Retail/\nShowrooms",context,false,true,false,false,true,false),
                  row_card_widget().row_type2("40%","At Time of Booking","40%","After 6 Month of Booking","20%","On Final Possession","",""),

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
         //         row_card_widget().child_row('assets/images/app_icons/club.png'," Club House"," 2,10,000 Sq.Ft. Total Area"," 1,00,000 Sq.Ft. Under Cover &"," 1,10,000 Sq.Ft. Open To Sky","42+ Amenities","y","assets/plans/clubhouse.pdf",context),
                  row_card_widget().club_row(context,'assets/plans/clubhouse.pdf','assets/images/app_icons/club.png'," Club House"," 2,10,000 Sq.Ft. Total Area"," 1,00,000 Sq.Ft. Under Cover &"," 1,10,000 Sq.Ft. Open To Sky","With A To Z Facilities","42+ Amenities"),

                  Container(
                    alignment: Alignment.centerLeft,
                    color:colors.colorPrimaryDark,
                    margin: EdgeInsets.only(top : 10.0,left : 0.0),
                    padding: EdgeInsets.all(8.0),
                    child:   Text("Ground Floor To Second Floor",
                      style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  common_widgets().row_item('assets/images/app_icons/fplan.png',"Typical Plan","Ground Floor",'assets/images/app_icons/fplan.png',"Typical Plan","First Floor",'assets/images/app_icons/fplan.png',"Typical Plan","Second Floor","retail",context),

                  row_card_widget().child_row_off('assets/images/app_icons/retail.png',"Ground Floor","384 Sq.Ft. Super Built Up","201.07 Sq.Ft. Carpet Area","A Wing","142 Shops","assets/plans/agroundfloorshop.pdf",context),
                  row_card_widget().child_row_off('assets/images/app_icons/retail.png',"Ground Floor","224.16 Sq.Ft. Super Built Up","127.5 Sq.Ft. Carpet Area","B Wing","168 Shops","assets/plans/bgroundfloorshop.pdf",context),
                  row_card_widget().child_row_off('assets/images/app_icons/retail.png',"Ground Floor - Banquet Hall","224.16 Sq.Ft. Super Built Up","127.5 Sq.Ft. Carpet Area","C Wing","154 Shops","assets/plans/cgroundfloorshop.pdf",context),
                  row_card_widget().child_row_off('assets/images/app_icons/retail.png',"First Floor","309 Sq.Ft. Super Built Up","176 Sq.Ft. Carpet Area","A Wing","142 Shops","assets/plans/afirstfloorshop.pdf",context),
                  row_card_widget().child_row_off('assets/images/app_icons/retail.png',"First Floor","224.11 Sq.Ft. Super Built Up","127.05 Sq.Ft. Carpet Area","B Wing","161 Shops","assets/plans/bfirstfloorshop.pdf",context),
                  row_card_widget().child_row_off('assets/images/app_icons/retail.png',"First Floor - Banquet Hall","224.16 Sq.Ft. Super Built Up","127.5 Sq.Ft. Carpet Area","C Wing","147 Shops","assets/plans/cfirstfloorshop.pdf",context),
                  row_card_widget().child_row_off('assets/images/app_icons/retail.png',"Second Floor","309 Sq.Ft. Super Built Up","176 Sq.Ft. Carpet Area","A Wing","142 Shops","assets/plans/asecondfloorshop.pdf",context),
                  row_card_widget().child_row_off('assets/images/app_icons/retail.png',"Second Floor - Food Court + Game Zone","224.11 Sq.Ft. Super Built Up","127.5 Sq.Ft. Carpet Area","B Wing","78 Shops","assets/plans/bsecondfloorshop.pdf",context),
                  row_card_widget().child_row_off('assets/images/app_icons/retail.png',"Second Floor - Multiplex Entertainment Area","224.11 Sq.Ft. Super Built Up","127.5 Sq.Ft. Carpet Area","C Wing","73 Shops","assets/plans/csecondfloorshop.pdf",context),
                  row_card_widget().child_row_off('assets/images/app_icons/retail.png',"Second Floor ","405.96 Sq.Ft.-233.3 Sq.Ft.","","D Wing","44 Shops","assets/plans/bcdsecondfloorshop.pdf",context),

                ]
            )
        )
    );
  }

}

