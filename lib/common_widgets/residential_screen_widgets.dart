import 'package:agora_city_center/VideoViewScreen.dart';
import 'package:agora_city_center/utilities/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../ProjectDetailsScreen.dart';

class residential_screen_widgets {

  static  String url;
  launch_browser(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Not supported");
    }
  }
    Card row1_item(String fromScreen,String image, String text,Color bkcolor) {
    return Card(
      margin: EdgeInsets.only(left : 10.0,right:10.0,top:10.0,bottom:10.0),
      child:Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:5.0,bottom:5.0),
           padding: EdgeInsets.all(10.0),
            height:70,width:70,
            /*decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: bkcolor,
                           image: DecorationImage(
                image : new AssetImage(image),
                fit: BoxFit.contain,
              ),
            ),*/
            decoration: BoxDecoration(
              color: bkcolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
                bottomLeft: Radius.circular(70),
                topRight: Radius.circular(70),
                bottomRight: Radius.circular(70),
              ),
            ),
      child : Image.asset(
        image,
      ),
           ),
          Container(
              margin: const EdgeInsets.only(left: 5.0, right: 5.0,bottom: 5.0),
              child: Divider(
                color: Colors.grey,
                height: 0,
              )),
      Container(
        margin: const EdgeInsets.only(left: 5.0, right: 5.0,bottom: 10.0,top:5.0),
        child:SizedBox(
            width:90,
            child:RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                //text: 'Default',
                style: TextStyle(color: colors.graydark,fontSize:10,fontFamily:'riseofkingdom'),
                children: <TextSpan>[
                  TextSpan(
                     text: text),
                ],
              ),
            ),
          ),
      ),
        ],),

    );
  }

  Card row1_item1(String fromScreen,BuildContext context,String image, String text,Color bkcolor) {
    return Card(
      margin: EdgeInsets.only(left : 10.0,right:10.0,top:10.0,bottom:10.0),
      child:
      Material(
        child:InkWell(
          onTap:() {
            switch (fromScreen)
            {
              case "2bhk":
                launch_browser("https://www.shreebalajiconstruction.com/shree_balaji_agora_city_centre/virtual-tour/2bhk/balaji2bhk.html");
                break;
              case "3bhk" :
                launch_browser("https://www.shreebalajiconstruction.com/shree_balaji_agora_city_centre/virtual-tour/3bhk/balaji3bhk.html");
                break;
              case "4bhk" :
                launch_browser("https://www.shreebalajiconstruction.com/shree_balaji_agora_city_centre/virtual-tour/4bhk/balaji4bhk.html");
                break;
              case "5bhk":
              case "6bhk":
                launch_browser("https://www.shreebalajiconstruction.com/shree-balaji-agora-city-centre-vadodara-360");

                break;
              case "pd":
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProjectDetailsScreen()));
                break;
            }
          },
          child:
    Container(
          child:Column(

            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:5.0,bottom:5.0),
                padding: EdgeInsets.all(10.0),
                height:70,width:70,
                decoration: BoxDecoration(
                  color: bkcolor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    bottomLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                    bottomRight: Radius.circular(70),
                  ),
                ),
                child : Image.asset(
                  image,
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(left: 5.0, right: 5.0,bottom: 5.0),
                  child: Divider(
                    color: Colors.grey,
                    height: 0,
                  )),
              Container(
                margin: const EdgeInsets.only(left: 5.0, right: 5.0,bottom: 10.0,top:5.0),
                child:SizedBox(
                  width:90,
                  child:RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      //text: 'Default',
                      style: TextStyle(color: colors.graydark,fontSize:10,fontFamily:'riseofkingdom'),
                      children: <TextSpan>[
                        TextSpan(
                            text: text),
                      ],
                    ),
                  ),
                ),
              ),
            ],),
        ),),
      ),
    );
  }




  Row amenities_row(String img1,String img2,String img3,String txt1,String txt2,String txt3, Color bkc1,Color bkc2,Color bkc3)
    {
      return Row(
        children: <Widget>[

            Expanded(
            flex:1,

        child:
           row1_item("",img1,txt1,bkc1),
            ),
          Expanded(
            flex:1,
            child:
            row1_item("",img2,txt2,bkc2),
          ),
          Visibility(
          child : Expanded(
            flex:1,
            child:
            row1_item("",img3,txt3,bkc3),
          ),
            visible: txt3 == "" ? false : true,
          ),
        ],
      );
    }

    Row project_details_row(String img1,String img2,String img3,String txt1,String txt2,String txt3, Color bkc1,Color bkc2,Color bkc3)
    {
      return Row(
        children: <Widget>[
          Expanded(
            flex:1,
            child:
            row1_item("",img1,txt1,bkc1),
          ),
          Expanded(
            flex:1,
            child:
            row1_item("",img2,txt2,bkc2),
          ),
          Expanded(
            flex:1,
            child:
            row1_item("",img3,txt3,bkc3),
          ),
        ],
      );
    }

  Row row1(String fromScreen,BuildContext context)
  {
    return Row(

      children: <Widget>[
  Expanded(
    flex:1,
       child:
    /*       GestureDetector(
             onTap:(){
              switch (fromScreen)
              {
                case "2bhk":
                  launch_browser("https://www.shreebalajiconstruction.com/shree_balaji_agora_city_centre/virtual-tour/2bhk/balaji2bhk.html");
                  break;
                case "3bhk" :
                  launch_browser("https://www.shreebalajiconstruction.com/shree_balaji_agora_city_centre/virtual-tour/3bhk/balaji3bhk.html");
                  break;
               case "4bhk" :
                 launch_browser("https://www.shreebalajiconstruction.com/shree_balaji_agora_city_centre/virtual-tour/4bhk/balaji4bhk.html");
                 break;
                case "5bhk":
                case "6bhk":
                launch_browser("https://www.shreebalajiconstruction.com/shree-balaji-agora-city-centre-vadodara-360");
                break;

              }
             },*/
       row1_item1(fromScreen,context,'assets/images/app_icons/threesixty.png',"360 Degree View",Colors.yellow[800]),
      //),
  ),
  Expanded(
    flex:1,
  child:
  GestureDetector(
    onTap:(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProjectDetailsScreen()),
      );
    },
    child:
      row1_item1("pd",context,'assets/images/app_icons/project64.png',"Project Detail",Colors.lightBlue[100]),
    ),
  ),
  Expanded(
  flex:1,
  child:
  GestureDetector(
  onTap:(){
  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => VideoViewScreen()),
  );
  },

child:  row1_item1(fromScreen,context,'assets/images/app_icons/home5.png',"Sample House",Colors.pink[50]),
  ),
  ),
      ],
    );
  }

}