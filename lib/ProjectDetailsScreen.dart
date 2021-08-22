import 'package:agora_city_center/ContactUsScreen.dart';
import 'package:agora_city_center/GalleryScreen.dart';
import 'package:agora_city_center/ProjectDetails_Engineers.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:agora_city_center/ProjectDetails_Overview.dart';
import 'package:agora_city_center/ProjectDetails_Amenities.dart';
import 'package:agora_city_center/ProjectDetails_Specification.dart';
import 'package:agora_city_center/ProjectDetails_BankLoans.dart';
import 'package:agora_city_center/ProjectDetails_AboutUs.dart';
import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/residential_screen_widgets.dart';
import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/gesture_handler.dart';
import 'package:agora_city_center/utilities/colors.dart';

import 'package:agora_city_center/utilities/app_constants.dart';

class ProjectDetailsScreen extends StatefulWidget {
  ProjectDetailsScreenWidget createState() => ProjectDetailsScreenWidget();
}

class ProjectDetailsScreenWidget extends State {
   static const url = "https://firebasestorage.googleapis.com/v0/b/agoracitycenter-c5b92.appspot.com/o/Agora%20City%20Centre%20Brochure.pdf?alt=media&token=a32218d3-d51a-43df-9a87-500089d6f3bc";
  launch_ebrochure(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Not supported");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Project Details"),
      ),
      body:
      //    Card(
    SingleChildScrollView(
    child: Column(
    mainAxisSize: MainAxisSize.max,
    children: [
    youtube_widget().get_youtube_widget(constants.projectDetailVideoId),
    youtube_widget().youtube_text_row('assets/images/app_icons/youtube.png', "Andre Kokoski (Architect USA) - Shree Balaji Group"),
    project_details_row("OV","AM","SP",'assets/images/app_icons/information64.png', 'assets/images/app_icons/amenities64.png', 'assets/images/app_icons/specification64.png', "OVERVIEW", "AMENITIES", "SPECIFICATION", colors.deeppurple,colors.duskYellow, Colors.blue[700]),
    project_details_row("BL","RS","PG",'assets/images/app_icons/bankloan64.png', 'assets/images/app_icons/reratransparent.png', 'assets/images/app_icons/gallery64.png', "BANK LOAN", "RERA STATUS", "PHOTO GALLERY", colors.cyan,Colors.white, Colors.green[300]),
    project_details_row("LM","EB","NB",'assets/images/app_icons/location64.png', 'assets/images/app_icons/brochure.png', 'assets/images/app_icons/nearby64.png', "LOCATION MAP", "E-BROCHURE", "NEAR BY", Colors.green[900],Colors.blue[900], Colors.purple[300]),
    project_details_row("AU","OT","CU",'assets/images/app_icons/aboutus64.png', 'assets/images/app_icons/engineer64.png', 'assets/images/app_icons/contactus64.png', "ABOUT US", "OUR TEAM", "CONTACT US", Colors.brown[500],Colors.pink[100], Colors.red[900]),
    ],
    ),
    ),

    );

  }
  Row project_details_row(String selectCode1,String selectCode2,String selectCode3,String img1,String img2,String img3,String txt1,String txt2,String txt3, Color bkc1,Color bkc2,Color bkc3)
  {
    return Row(
      children: <Widget>[
        Expanded(
          flex:1,

                child: row1_item(selectCode1,img1,txt1,bkc1),
              ),


        Expanded(
          flex:1,
    child:      row1_item(selectCode2,img2,txt2,bkc2),
        ),

        Expanded(
          flex:1,
  child:
  row1_item(selectCode3,img3,txt3,bkc3),
        ),
     ],
    );
  }

  Card row1_item(String selectCode,String image, String text,Color bkcolor) {
    return

     Card(
      margin: EdgeInsets.only(left : 10.0,right:10.0,top:10.0,bottom:10.0),
      child: Material(
         child:InkWell(
           splashColor: colors.graydark,
         // onHover:(){Boolean bool}
           onTap:()
        {


               onClickCall(selectCode);
                 },
    child: IgnorePointer(
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
                  style: TextStyle(color: colors.graydark,fontSize:12,fontFamily:'riseofkingdom'),
                  children: <TextSpan>[
                    TextSpan(
                        text: text),
                  ],
                ),
              ),
            ),
          ),
        ],),

          ),),),
    );
  }

  void onClickCall(String selectCode)
  {
    if(selectCode=="OV"){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProjectDetails_Overview()),
      );
    }
    else if(selectCode=="BL"){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProjectDetails_BankLoans()),
      );
    }
    else if(selectCode=="LM"){
      MapsLauncher.launchQuery(Strings.head_site_address);
    }
    else if(selectCode=="AU"){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProjectDetails_AboutUs()),
      );
    }

    else if(selectCode=="AM"){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProjectDetails_Amenities()),
      );
    }
    else if(selectCode=="RS"){
      gesture_handler().openPDFView(context, 'assets/plans/reracertificate.pdf',"p");
    }
    else if(selectCode=="EB"){
      launch_ebrochure(url);
    }
    else if(selectCode=="OT"){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProjectDetails_Engineers()),
      );
    }
    else if(selectCode=="SP"){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProjectDetails_Specification()),
      );
    }
    else if(selectCode=="PG"){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GalleryScreen()),
      );
    }
    else if(selectCode=="NB"){
      gesture_handler().openPDFView(context, 'assets/plans/nearby.pdf',"p");

    }
    else if(selectCode=="CU"){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ContactUsScreen()),
      );
    }


  }
}
