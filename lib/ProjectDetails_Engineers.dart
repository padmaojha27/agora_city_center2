import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/colors.dart';

class ProjectDetails_Engineers extends StatefulWidget {
  ProjectDetails_Engineers_Widget createState() => ProjectDetails_Engineers_Widget();
}

class ProjectDetails_Engineers_Widget extends State {
  goBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(Strings.screenTitle_engineer),
      ),

      body:
      SingleChildScrollView(

        child:Container(
        margin: EdgeInsets.only(top:20.0,left:10.0,right:10.0),

    child: Column(
    children: <Widget>[

        engineer_row('assets/images/app_icons/structuralengineer.png',Strings.engineertitle1,Strings.engineer1,Strings.engineerloc1),

          engineer_row('assets/images/app_icons/architect.png',Strings.engineertitle2,Strings.engineer2,Strings.engineerloc2),
      engineer_row('assets/images/app_icons/lawyer.png',Strings.engineertitle3,Strings.engineer3,Strings.engineerloc3),
      engineer_row('assets/images/app_icons/architect.png',Strings.engineertitle4,Strings.engineer4,Strings.engineerloc4),
        ],
    ),
        ),


    ),
    );
  }




  Card engineer_row (String image,String titletext,String text1,String text2)
  {
    return
      Card(
        color:colors.gray,
      child:Padding(
        padding:EdgeInsets.all(10),
        child:

        Row(
          crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
            Column(
              children: <Widget>[

                Container(
                  margin: EdgeInsets.only(top: 0.0, bottom: 0.0),
                  height: 60,
                  width: 60,
                  child: Image.asset(
                    image,
                  ),
                ),
                Container(
                  width:100,

                  margin: const EdgeInsets.only(left: 2.0, right: 0.0, bottom: 0.0,top:10.0),
                  alignment:Alignment.center,
                  child:Text(
                      titletext,
                      style: TextStyle(color: colors.sbglogoorange,fontFamily:'font_regular',
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center
                  ),
                ),

              ],
            ),

            Column(
              crossAxisAlignment:CrossAxisAlignment.start,

              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 2.0, right: 0.0, bottom: 0.0,top:0.0),
                  alignment:Alignment.centerLeft,
                  child:Text(
                      text1,
                      overflow: TextOverflow.ellipsis,
                      maxLines:2,
                      style: TextStyle(color:colors.colorPrimaryDark,fontFamily:'font_regular',
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(left: 2.0, right: 2.0, bottom: 0.0,top:10.0),
                  padding: new EdgeInsets.only(right: 13.0),

                  child:Text(
                      text2,
                      overflow: TextOverflow.ellipsis,
                      maxLines:2,
                      style: TextStyle(color:colors.colorPrimaryDark,fontFamily:'font_regular',
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.left
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      );
  }
}