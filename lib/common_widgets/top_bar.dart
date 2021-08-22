import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:flutter/services.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/colors.dart';

import 'package:fluttertoast/fluttertoast.dart';


class top_bar{
  BuildContext dialogContext;

  AppBar get_app_bar(String title, BuildContext context)
  {
    Dialog disclaimerDialog(BuildContext context)
    {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        child:
        Container(

          margin:EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue[900],width: 2 ),
                ),
                child: Text('DISCLAIMER',
                  style: TextStyle(color: Colors.red[900],
                    fontSize: 18,fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 0.0, bottom: 0.0),
                height: 80,
                width: 120,
                child: Image.asset(
                  'assets/images/app_icons/copyright.png',
                ),
              ),

              Container(
                margin: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10.0,top:10.0),
                alignment:Alignment.center,
                child:Text(
                    Strings.disclaimertext,
                    overflow: TextOverflow.ellipsis,
                    maxLines:15,

                    style: TextStyle(color: Colors.black,
                        fontSize: 16
                    ),
                    textAlign: TextAlign.center
                ),
              ),
          //    Container(
           //     margin: EdgeInsets.only(top : 10.0,left:10.0,bottom:10.0,right:10.0),
                FlatButton(
                    color: colors.colorPrimaryDark,
                    textColor: Colors.white,
                    child: Text('ACCEPT'),
                    onPressed: (){Navigator.pop(context);//(context, rootNavigator: true).pop();\
                       }
              ),
             // ),
            ],
          ),
        ),
      );
    }

    Widget popupMenuMore(BuildContext context) {
      return PopupMenuButton(
          padding: EdgeInsets.only(right: 20.0),

          onSelected: (value) {

            if(value==1)
            {
              showDialog(context: context,
                  builder: (BuildContext context){

                    dialogContext=context;

                    return disclaimerDialog(dialogContext);
                  }
              );
            }
            else
            {
              SystemNavigator.pop();
              //exit(0);
            }

          },
          itemBuilder: (context) => [
            PopupMenuItem(
                value: 1,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),

                      // child:
                      //Icon(Icons.print),
                    ),
                    Text('Disclaimer')
                  ],
                )),
            PopupMenuItem(
                value: 2,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2, 2, 8, 2),
                      //child: Icon(Icons.share),
                    ),
                    Text('Exit')
                  ],
                )),

          ]);
    }

    String text,subject;
  _launch(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Not supported");
    }
  }

  _onShareData(BuildContext context,String text,String subject) async {
    final RenderBox box = context.findRenderObject();
    {
      await Share.share(text,
          subject: subject,
          sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    }
  }

    return AppBar(
      automaticallyImplyLeading: true,
      title: Text(title),
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 15.0),
           // child: Material(
              child:InkWell(
              onTap: () {
                _launch("tel:08690433433");
              },
              child: Icon(
                Icons.call,
                size: 26.0,
              ),
            ),
            //),
        ),
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            //child: Material(
            child:InkWell(
              onTap: () {
                text = Strings.sharecontent;
                subject = Strings.sharetitle;
             _onShareData(context,text,subject);
              },
              child: Icon(
                Icons.share,
                size: 26.0,
              ),
            //),
  ),
        ),
        popupMenuMore(context),
      ],
    );

  }

}