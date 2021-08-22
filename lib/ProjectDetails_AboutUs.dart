import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class ProjectDetails_AboutUs extends StatefulWidget {
  ProjectDetails_AboutUs_Widget createState() => ProjectDetails_AboutUs_Widget();
}

class ProjectDetails_AboutUs_Widget extends State {
  goBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  launch_browser(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Not supported");
    }
  }

  _launch(url) async {
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
        title: Text(Strings.screenTitle_aboutus),

      ),

      body:
      SingleChildScrollView(
        child:
        Container(
          margin: EdgeInsets.all(10.0),

          child: Column(
            children: <Widget>[

              Card(
                child: Column(
                  children: <Widget>[

                Container(
                  alignment:Alignment.center,
                  margin: EdgeInsets.only(top: 0.0, bottom: 0.0),
                  height: 120,
                  width: 100,
                  child: Image.asset(
                    'assets/images/app_icons/balajitransparent.png',
                  ),
                ),
          Container(
            margin: const EdgeInsets.only(left: 2.0, right: 2.0, bottom: 10.0,top:5.0),
            alignment:Alignment.center,
            child:Text(
                Strings.aboutustitle,
                overflow: TextOverflow.ellipsis,
                maxLines:2,
                style: TextStyle(color: Colors.black,
                  fontSize: 16,fontWeight: FontWeight.bold,fontFamily:'cambria'
                ),
                textAlign: TextAlign.center
            ),
          ),
                    Container(
                      margin: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0,top:10.0),
                      alignment:Alignment.centerLeft,
                      child:Text(
                          Strings.aboutusdesc,
                          overflow: TextOverflow.ellipsis,
                          maxLines:20,

                          style: TextStyle(color: colors.colorPrimaryDark,
                            fontSize: 14,fontFamily:'cambria'
                      ),
                          textAlign: TextAlign.left
                      ),
                    ),

                    Container(
                        margin: const EdgeInsets.only(top:10.0,left: 10.0, right: 10.0),
                        child: Divider(
                          color: colors.colorPrimaryDark,
                          height: 5,
                          thickness:5,
                        )),
                    Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin:EdgeInsets.only(left:10,top:10,bottom:10),
                          height:30,
                          width:30,
                          padding: EdgeInsets.only(top : 0.0),
                          child : Image.asset('assets/images/app_icons/map.png'),

                        ),

                        Container(
                            margin:EdgeInsets.only(left:10,top:10,bottom:10,right:10),
                            child:Text(
                              Strings.aboutusaddress,
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 16.0,fontFamily:'fontregular',color:colors.colorPrimary),
                              maxLines: 5,)
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin:EdgeInsets.only(left:10,top:10,bottom:10),

                          height:20,
                          width:20,
                          padding: EdgeInsets.only(top : 0.0),
                          child : Image.asset('assets/images/app_icons/call.png'),

                        ),

                        Container(
                          margin:EdgeInsets.only(left:10,top:10,bottom:10,right:10),
                          child:InkWell(
                            onTap: () {
                              _launch("tel:08690853853");
                            },
                          child:Text(
                            Strings.aboutuscontact,
                            style: TextStyle(
                              decoration:TextDecoration.underline,
                              fontSize: 15,fontFamily:'fontregular',color:colors.colorPrimary
                            ),
                          ),
                        ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin:EdgeInsets.only(left:10,top:10,bottom:10),
                          height:20,width:20,
                          child : Image.asset('assets/images/app_icons/email.png'),
                        ),
                        Container(
                          margin:EdgeInsets.only(left:10,top:10,bottom:10,right:10),
                          child:GestureDetector(
                            onTap:() {
                              final Email email = Email(
                                body: "",
                                subject: "",
                                recipients: [Strings.head_site_email],
                                isHTML: false,
                              );
                              FlutterEmailSender.send(email);
                            },
                          child:Text(
                            Strings.aboutusemail,
                            style: TextStyle(
                              decoration:TextDecoration.underline,
                              fontSize: 15,fontFamily:'fontregular',color:colors.colorPrimary,
                            ),
                          ),
                        ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin:EdgeInsets.only(left:10,top:10,bottom:10),

                          height:20,width:20,
                          child : Image.asset('assets/images/app_icons/website.png'),
                        ),
                        Container(
                          margin:EdgeInsets.only(left:10,top:10,bottom:10,right:10),
                          child:GestureDetector(
                            onTap:(){
                              launch_browser("https://www.shreebalajiconstruction.com");
                            },
                          child:Text(
                            Strings.aboutuswebsite,
                            style: TextStyle(
                              decoration:TextDecoration.underline,
                              fontSize: 15,fontFamily:'fontregular',color:colors.colorPrimary,
                            ),
                          ),
                        ),
                        ),
                      ],
                    ),


                  ],
          ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}