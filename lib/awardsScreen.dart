import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/utilities/app_constants.dart';
import 'package:agora_city_center/common_widgets/row_card_widget.dart';
import 'package:agora_city_center/utilities/app_strings.dart';


class awardsScreen extends StatefulWidget {
  awardsScreenWidget createState() => awardsScreenWidget();
}

class awardsScreenWidget extends State {
  goBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Agora City Centre"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {

                },
                child: ImageIcon(
                  AssetImage('assets/images/award.png'),
                  size: 26.0,
                ),
              )
          ),

        ],
      ),
    body:
    SingleChildScrollView(
    child: Column(
    mainAxisSize: MainAxisSize.max,
    children: [
    youtube_widget().get_youtube_widget(constants.award_ScreenVideoId),
    youtube_widget().youtube_text_row('assets/images/app_icons/award.png', "BEST COMMERCIAL PROJECTS IN GUJARAT AWARD-Shree Balaji Group"),
      Container(
        alignment: Alignment.center,
        color:Colors.white,
        margin: EdgeInsets.only(top : 10.0,left : 0.0),
        padding: EdgeInsets.all(8.0),
        child:   Text("Awards",
          style: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),

      Row(
          mainAxisSize: MainAxisSize.min,
        mainAxisAlignment:MainAxisAlignment.center,
        children:[
          row_card_widget().awards_row('assets/images/awards/a1.png',Strings.year1,Strings.atitle1,Strings.awardgivenby1),
          row_card_widget().awards_row('assets/images/awards/a2.png',Strings.year2,Strings.atitle2,Strings.awardgivenby2),
        ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a3.png',Strings.year3,Strings.atitle3,Strings.awardgivenby3),
            row_card_widget().awards_row('assets/images/awards/a4.jpeg',Strings.year4,Strings.atitle4,Strings.awardgivenby4),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a5.jpeg',Strings.year5,Strings.atitle5,Strings.awardgivenby5),
            row_card_widget().awards_row('assets/images/awards/a6.png',Strings.year6,Strings.atitle6,Strings.awardgivenby6),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a7.png',Strings.year7,Strings.atitle7,Strings.awardgivenby7),
            row_card_widget().awards_row('assets/images/awards/a8.jpeg',Strings.year8,Strings.atitle8,Strings.awardgivenby8),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a9.jpeg',Strings.year9,Strings.atitle9,Strings.awardgivenby9),
            row_card_widget().awards_row('assets/images/awards/a10.jpeg',Strings.year10,Strings.atitle10,Strings.awardgivenby10),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a11.jpeg',Strings.year11,Strings.atitle11,Strings.awardgivenby11),
            row_card_widget().awards_row('assets/images/awards/a12.jpeg',Strings.year12,Strings.atitle12,Strings.awardgivenby12),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a13.png',Strings.year13,Strings.atitle13,Strings.awardgivenby13),
            row_card_widget().awards_row('assets/images/awards/a14.jpeg',Strings.year14,Strings.atitle14,Strings.awardgivenby14),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a15.jpeg',Strings.year15,Strings.atitle15,Strings.awardgivenby15),
            row_card_widget().awards_row('assets/images/awards/a16.png',Strings.year16,Strings.atitle16,Strings.awardgivenby16),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a17.jpeg',Strings.year17,Strings.atitle17,Strings.awardgivenby17),
            row_card_widget().awards_row('assets/images/awards/a18.jpeg',Strings.year18,Strings.atitle18,Strings.awardgivenby18),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a19.jpeg',Strings.year19,Strings.atitle19,Strings.awardgivenby19),
            row_card_widget().awards_row('assets/images/awards/a20.jpeg',Strings.year20,Strings.atitle20,Strings.awardgivenby20),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a21.jpeg',Strings.year21,Strings.atitle21,Strings.awardgivenby21),
            row_card_widget().awards_row('assets/images/awards/a22.jpeg',Strings.year22,Strings.atitle22,Strings.awardgivenby22),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a23.jpeg',Strings.year23,Strings.atitle23,Strings.awardgivenby23),
            row_card_widget().awards_row('assets/images/awards/a24.jpeg',Strings.year24,Strings.atitle24,Strings.awardgivenby24),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a25.jpeg',Strings.year25,Strings.atitle25,Strings.awardgivenby25),
            row_card_widget().awards_row('assets/images/awards/a26.png',Strings.year26,Strings.atitle26,Strings.awardgivenby26),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a27.jpeg',Strings.year27,Strings.atitle27,Strings.awardgivenby27),
            row_card_widget().awards_row('assets/images/awards/a28.jpeg',Strings.year28,Strings.atitle28,Strings.awardgivenby28),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a29.jpeg',Strings.year29,Strings.atitle29,Strings.awardgivenby29),
            row_card_widget().awards_row('assets/images/awards/a30.jpeg',Strings.year30,Strings.atitle30,Strings.awardgivenby30),
          ]
      ),
      Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            row_card_widget().awards_row('assets/images/awards/a31.jpeg',Strings.year31,Strings.atitle31,Strings.awardgivenby31),
            row_card_widget().awards_row('assets/images/awards/a32.jpeg',Strings.year32,Strings.atitle32,Strings.awardgivenby32),
          ]
      ),
    ],
    ),
    ),
    );
  }
}