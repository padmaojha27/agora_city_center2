import 'package:flutter/material.dart';
import 'package:agora_city_center/utilities/gesture_handler.dart';
import 'package:agora_city_center/utilities/colors.dart';
import 'package:agora_city_center/utilities/app_constants.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
class row_card_widget {
  Card child_row(String image, String txt1, String txt2, String txt3,
      String txt4, String txt5, String openpdfyn,String filename,BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child:
      Material(
      child:InkWell(
      onTap:()
          {
            if(openpdfyn=="y")
              {
                gesture_handler().openPDFView(context,filename,"l");

              };
          },
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(top: 0, bottom: 3.0),
              height: 80, width: 80,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(top: 0.0, left: 10.0, right: 5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    /*Text(
                        txt1,
                        style: TextStyle(color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left
                    ),*/
                    EasyRichText(
                      txt1,
                      patternList: [
                        EasyRichTextPattern(
                            targetString: 'th', superScript: true),
                      ],
                    ),
                    Text(txt2,
                        style: TextStyle(color: Colors.black, fontSize: 11),
                        textAlign: TextAlign.left),
                    Text(
                      txt3,
                      style: TextStyle(color: Colors.black, fontSize: 11),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      txt4,
                      style: TextStyle(color: Colors.black, fontSize: 11),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              ),
            ),
//              Expanded(
            //
            //             flex: 1,
            //child:
            /* Column(
                  mainAxisSize:MainAxisSize.max,
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: <Widget>[*/
            Container(
              //padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(right: 5),
              child:
              Text(
                txt5,
                style: TextStyle(color: Colors.white,
                    fontSize: 11,
                    backgroundColor: Colors.green),
                textAlign: TextAlign.center,

              ),
            ),
          ],
        ),
      ),
      ),
    ),
    );
  }
  Card child_row1(BuildContext context, String screenname, String image,
      String text1, String text2, String text3, String text4, String text5) {
    Color v;
    if(text5=="VILLA")
      {
        v = colors.sbglogoorange;
      }
    else //if(text5 == "FLAT")
      {
        v = colors.green;
      }
    return Card(
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0,bottom:8.0),
      child:
      Material(
      child:InkWell(
        onTap: () {
          gesture_handler().openScreen(screenname, context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /*Expanded(
              flex: 1,
              child:*/
            Container(
              margin:EdgeInsets.all(5.0),
              child:Image.asset(image,
                height: 75,
                width: 75,
                fit:BoxFit.fill,
              ),
            ),
            //     ),
            Expanded(
              flex: 4,
              child:
              Container(
                padding:EdgeInsets.all(5.0),
                margin: EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 5.0),
                      child: Text(
                        text1,
                        style: TextStyle(color: colors.myTextPrimaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                      child: Text(text2,
                          style: TextStyle(
                              color:colors.myTextSecondaryColor, fontSize: 12),
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                      child:
                      Text(
                        text3,
                        style: TextStyle(color: colors.greenlatest, fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                      child:
                      Text(
                        text4,
                        style: TextStyle(color: colors.sbglogoorange, fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 2, bottom: 2, left:2,right:2),
              margin:EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: v,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(2),
                  bottomRight: Radius.circular(2),
                  topLeft: Radius.circular(2),
                  bottomLeft: Radius.circular(2),
                ),
              ),
              child: Text(text5,
                style: TextStyle(color: Colors.white, fontSize: 10,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

            ),
          ],
        ),
      ),
      ),
    );
  }


  Card child_row_off(String image,
      String text1, String text2, String text3, String text4, String text5,String filename,BuildContext context) {
   String thpart = text1.substring(2,4);
    return Card(
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child:Material(
      child: InkWell(
        onTap: () {
          gesture_handler().openPDFView(context,filename,"l");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /*Expanded(
              flex: 1,
              child:*/
            Container(
              margin:EdgeInsets.all(5.0),
              child:Image.asset(image,
                height: 75,
                width: 75,
                fit:BoxFit.fill,
              ),
            ),
            //     ),
            Expanded(
              flex: 4,
              child:
              Container(
                padding:EdgeInsets.all(5.0),
                margin: EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 5.0),
                      child:
                      Text(
                        text1,
                        style: TextStyle(color: colors.myTextPrimaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                      child: Text(text2,
                          style: TextStyle(
                              color:colors.myTextSecondaryColor, fontSize: 12),
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                      child:
                      Text(
                        text3,
                        style: TextStyle(color: colors.greenlatest, fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                      child:
                      Text(
                        text4,
                        style: TextStyle(color: colors.sbglogoorange, fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 2, bottom: 2, left:2,right:2),
              margin:EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(2),
                  bottomRight: Radius.circular(2),
                  topLeft: Radius.circular(2),
                  bottomLeft: Radius.circular(2),
                ),
              ),
              child: Text(text5,
                style: TextStyle(color: Colors.white, fontSize: 10),
                textAlign: TextAlign.center,
              ),

            ),
          ],
        ),
      ),
      ),
    );
  }


  Card child_row_club(String image,
      String text1, String text2, String text3, String text4,BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin:EdgeInsets.all(5.0),
                child:Image.asset(image,
                  height: 75,
                  width: 75,
                  fit:BoxFit.fill,
                ),
              ),
              //     ),
              Expanded(
                flex: 4,
                child:
                Container(
                  padding:EdgeInsets.all(5.0),
                  margin: EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 0.0, bottom: 5.0),
                        child:
                        Text(
                          text1,
                          style: TextStyle(color: colors.myTextPrimaryColor,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),

                      ),
                      Container(
                        margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                        child: Text(text2,
                            style: TextStyle(
                                color:colors.myTextSecondaryColor, fontSize: 12),
                            textAlign: TextAlign.left),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                        child:
                        Text(
                          text3,
                          style: TextStyle(color: colors.darkred, fontSize: 12),
                          textAlign: TextAlign.left,
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            Container(
                  padding: EdgeInsets.only(top: 2, bottom: 2, left:2,right:2),
                  margin:EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: colors.green,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(2),
                      bottomRight: Radius.circular(2),
                      topLeft: Radius.circular(2),
                      bottomLeft: Radius.circular(2),
                    ),
                  ),

                  child:Center(
                    child: Text(text4,
                      style: TextStyle(color: Colors.white, fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
    );
  }



  Card child_row_res(String image,
      String text1, String text2, String text3, String text4, String filename,BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
   child:Material(
      child: InkWell(
        onTap: () {
          gesture_handler().openPDFView(context,filename,"l");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /*Expanded(
              flex: 1,
              child:*/
            Container(
              margin:EdgeInsets.all(5.0),
              child:Image.asset(image,
                height: 75,
                width: 75,
                fit:BoxFit.fill,
              ),
            ),
            //     ),
            Expanded(
              flex: 4,
              child:
              Container(
                padding:EdgeInsets.all(5.0),
                margin: EdgeInsets.only(top: 0.0, left: 10.0, right: 10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 5.0),
                      child:
                      Text(
                        text1,
                        style: TextStyle(color: colors.myTextPrimaryColor,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                      child: Text(text2,
                          style: TextStyle(
                              color:colors.myTextSecondaryColor, fontSize: 12),
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                      child:
                      Text(
                        text3,
                        style: TextStyle(color: colors.darkred, fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                    ),

                  ],
                ),
              ),
            ),

            Visibility(
            child:Container(
              padding: EdgeInsets.only(top: 2, bottom: 2, left:2,right:2),
              margin:EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(2),
                  bottomRight: Radius.circular(2),
                  topLeft: Radius.circular(2),
                  bottomLeft: Radius.circular(2),
                ),
              ),

              child:Center(
              child: Text(text4,
                style: TextStyle(color: Colors.white, fontSize: 10),
                textAlign: TextAlign.center,
              ),
              ),
            ),
              visible: text4 == "" ? false : true,
            ),
          ],
        ),
      ),
   ),
    );
  }


  Card club_row(BuildContext context, String filename, String image,
      String text1, String text2, String text3, String text4, String text5,String text6) {
    return Card(
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0,bottom:2.0),
      child:Material(
      child: InkWell(
        onTap: () {
          gesture_handler().openPDFView(context,filename,"l");
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            /*Expanded(
              flex: 1,
              child:*/
              Container(
          margin:EdgeInsets.all(5.0),
                child:Image.asset(image,
                  height: 75,
                  width: 75,
                  fit:BoxFit.fill,
              ),
            ),
       //     ),
            Expanded(
              flex: 4,
              child:
              Container(
                padding:EdgeInsets.all(0.0),
                margin: EdgeInsets.only(top: 0.0, left: 5.0, right: 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 5.0),
                      child: Text(
                        text1,
                        style: TextStyle(color: colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                      child: Text(text2,
                          style: TextStyle(
                              color:colors.gray_text, fontSize: 12),
                          textAlign: TextAlign.left),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                      child:
                      Text(
                        text3,
                        style: TextStyle(color: colors.gray_text, fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                      child:
                      Text(
                        text4,
                        style: TextStyle(color: colors.gray_text, fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 0.0, bottom: 3.0),
                      child:
                      Text(
                        text5,
                        style: TextStyle(color: colors.darkred, fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 2, bottom: 2, left:2,right:2),
              margin:EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(2),
                  bottomRight: Radius.circular(2),
                  topLeft: Radius.circular(2),
                  bottomLeft: Radius.circular(2),
                ),
              ),
              child: Text(text6,
                style: TextStyle(color: Colors.white, fontSize: 10),
                textAlign: TextAlign.center,
              ),

            ),
          ],
        ),
      ),
      ),
    );
  }

// Container row_type2()
  Container row_type2(String t1_1, String t1_2, String t2_1, String t2_2,
      String t3_1, String t3_2, String t4_1, String t4_2) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
      child:
          IntrinsicHeight(
      child:Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                  children: <Widget>[
                    Text(t1_1,
                      style: TextStyle(color: colors.colorPrimaryDark,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(t1_2,
                      style: TextStyle(color: Colors.black, fontSize: 6),
                      textAlign: TextAlign.center,
                    ),
                  ]
              ),
            ),
          ),
          VerticalDivider(
            color:colors.lightGrey,
            thickness: 1,
            indent: 2,
            endIndent: 0,
            width: 10,

          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                  children: <Widget>[
                    Text(t2_1,
                      style: TextStyle(color: colors.colorPrimaryDark,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(t2_2,
                      style: TextStyle(color: Colors.black, fontSize: 6),
                      textAlign: TextAlign.center,
                    ),
                  ]
              ),
            ),
          ),
          VerticalDivider(
            color:colors.lightGrey,
            thickness: 1,
            indent: 2,
            endIndent: 0,
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                  children: <Widget>[
                    Text(t3_1,
                      style: TextStyle(color: colors.colorPrimaryDark,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(t3_2,
                      style: TextStyle(color: Colors.black, fontSize: 6),
                      textAlign: TextAlign.center,
                    ),
                  ]
              ),
            ),
          ),
            Visibility(

         child: VerticalDivider(
            color:colors.lightGrey,
            thickness: 1,
            indent: 2,
            endIndent: 0,
            width: 10,
          ),
              visible: t4_1 == "" ? false : true,

            ),
          Visibility(

            child: Expanded(
              flex: 1,
              child: Container(
                child: Column(
                    children: <Widget>[
                      Text(t4_1,
                        style: TextStyle(color: colors.colorPrimaryDark,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      Text(t4_2,
                        style: TextStyle(color: Colors.black, fontSize: 6),
                        textAlign: TextAlign.center,
                      ),
                    ]
                ),
              ),
            ),
            visible: t4_1 == "" ? false : true,
          ),
        ],
      ),
          ),
    );
  }

  Row row_type4(String text1, String text2, String text3,BuildContext context,bool cm,bool bn,bool sh,bool uspoff,bool uspret,bool uspres) {

    return Row(
      children: <Widget>[
      /*Expanded(
          flex: 1,
        child:*/
        Material(
        child:InkWell(
        onTap:()
       {

      if (cm) {
        gesture_handler().openScreen("Club Membership", context);
      }

    },

          child: Container(
            height:50,
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: colors.green,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Text(text1,
              style: TextStyle(color: Colors.white, fontSize: 15,fontFamily:'serif'),
              textAlign: TextAlign.center,
            ),

          ),
        ),
        ),
       // ),
          Expanded(
          flex: 1,
          child:
          Material(
          child:InkWell(
          onTap:() {
    if (bn) {
    gesture_handler().openScreen("Book Now", context);
    }
    },
          child: Container(
            margin: EdgeInsets.all(5.0),//, left: 10.0, right: 10.0),
            child: Image.asset(
              'assets/images/app_icons/booknow5.gif',
              width:200,
              height:60,
            ),
          ),
/*
        child: ClipPath(
        clipper: SkewCut(),
        child: Container(
        color: Colors.red[900],
        width: 100,
        height: 30,
        child: Center(child: Text(text2)),
        ),
        ),*/
        ),
          ),
        ),

        /*Expanded(
          flex: 1,
        child:*/
        Material(
        child:
        InkWell(
    onTap:() {
      if (sh) {
        print('tapped');
        gesture_handler().openScreen("Sample House Ready", context);
      }
      else if (uspoff) {
        gesture_handler().openPDFView(context, "assets/plans/uspoffice.pdf","p");
      }
      else if (uspret) {
        gesture_handler().openPDFView(context, "assets/plans/uspretail.pdf","p");
      }
      else if (uspres) {
        gesture_handler().openPDFView(
            context, "assets/plans/uspresidential.pdf","p");
      }
    },

    child: Container(
          height:50,
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Text(text3,
              style: TextStyle(color: Colors.white, fontSize: 15,fontFamily:'serif'),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        ),        //),
      ],
    );
  }

  Row row_type3(String text1, String text2, String text3) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 5),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            child: Text(text1,
              style: TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),

          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(top: 10.0, left: 0.0),
            child: Text(text2,
              style: TextStyle(color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 10),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Text(text3,
              style: TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  Container heading_row(String heading_text) {
    return
      Container(
        alignment: Alignment.centerLeft,
        color: colors.colorPrimaryDark,
        margin: EdgeInsets.only(top: 10.0, left: 0.0),
        padding: EdgeInsets.all(8.0),
        child: Text(heading_text,
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),

      );
  }
Row virtual_tour_text_row(String text)
{
  return
    Row(
        children: <Widget>[
          Container(
            width: 50,
            padding: EdgeInsets.only(
                top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
            child: Image.asset('assets/images/app_icons/threesixtyblack.png',
                alignment: Alignment.center),
          ),

          Container(
            width:300,
            margin: EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0),
            child: Text(text,
              style: TextStyle(color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),

          ),
        ]
    );
}

  ClipRRect virtual_tour_row(String image)
  {
   return
     ClipRRect(
       child: Stack(
         children: <Widget>[
           //   GestureDetector(
           //   onTap: officesScreen,
           //      child:
           Container(
             margin : EdgeInsets.only(top : 10.0,left : 10.0,right:10.0,bottom:0.0),
             child : Image.asset(image,fit:BoxFit.cover,width:500),
           ),

         ],
       ),
     );

  }




    Card awards_row(String image, String text1, String text2, String text3) {
    return Card(
      margin: EdgeInsets.only(top:10,left: 5.0, right: 10.0),
      child:Padding(
      padding: EdgeInsets.all(20.0),
      child:
      Column(
        children: <Widget>[
      Container(
            margin: EdgeInsets.only(top: 5.0, bottom: 10.0),
            height: 90,
            width: 90,
            child: Image.asset(
              image,
            ),
          ),
       Container(
              margin: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 2.0,top:2.0),
              child: Divider(
                color: Colors.grey,
                height: 0,
              )
          ),

      Container(
       // width:120,
        margin: const EdgeInsets.only(left: 2.0, right: 2.0, bottom: 5.0,top:5.0),
        child:Text(
              text1,
              style: TextStyle(color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center
          ),
      ),


      Container(
        width:110,
       child: Text(text2,
              style: TextStyle(color: Colors.black, fontSize: 11),
            textAlign: TextAlign.center),
      ),

          Container(
        width:120,
      child:  Text(
            text3,
            style: TextStyle(color: Colors.black, fontSize: 11),
            textAlign: TextAlign.center,

      ),
      ),
        ],),
      ),
    );
  }

  Card overview_row2(String image, String text1,String text2) {
    return Card(
      margin: EdgeInsets.only(left : 10.0,right:10.0,top:10.0,bottom:10.0),
      child:
          Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:5.0,bottom:5.0),
                padding: EdgeInsets.all(10.0),
                height:70,width:70,
                child : Image.asset(
                  image,
                ),
              ),
                   Divider(
                    color: Colors.grey,
                    height: 0,
                  ),
            ],),

    );
  }

  Container overview_row(String image, String text1, String text2) {
    return

      Container(
        height:200,
           child:Card(
      margin: EdgeInsets.only(top:10,left: 20.0, right: 10.0),
      child:Padding(
        padding: EdgeInsets.only(left:5.0,right:5.0,top:5.0,bottom:0.0),
        child:
            IntrinsicHeight(
                  child:Column(
          children: <Widget>[
            Container(
              alignment:Alignment.center,
              margin: EdgeInsets.only(top: 0.0, bottom: 0.0),
              height: 90,
              width: 90,
              child: Image.asset(
                image,
              ),
            ),

            Container(
              width:120,
              margin: const EdgeInsets.only(left: 2.0, right: 2.0, bottom: 0.0,top:0.0),
              alignment:Alignment.center,
              child:Text(
                  text1,
                  style: TextStyle(color: Colors.blue,
                      fontSize: 16,
                      ),
                  textAlign: TextAlign.center
              ),
            ),
        Container(
          margin: const EdgeInsets.only(left: 5.0, right: 5.0,bottom: 0.0),
                 child:Divider(
                  color: Colors.grey,
                  height: 0,
                  thickness:2
                ),
        ),
            Container(
              alignment:Alignment.center,
              width:110,
              child: Text(text2,
                  style: TextStyle(color: colors.blue, fontSize: 14,fontFamily: 'opensanssemibold'),
                  textAlign: TextAlign.center),
            ),


          ],),

    ),
    ),),
      );

  }


}
 class SkewCut extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(SkewCut oldClipper) => false;
}