import 'package:flutter/material.dart';
import 'package:agora_city_center/utilities/gesture_handler.dart';

class common_widgets {
  Card typical_plan_row(String image,String text1,String text2,Color bkcolor) {
    return Card(
      child:
      Column(
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
            SizedBox(
              width:90,
              child:RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  //text: 'Default',
                  style: TextStyle(color: Colors.black,fontSize:11),
                    children: <TextSpan>[
                    TextSpan(
                        text: text1),
                    TextSpan(
                        text: "\n"+text2,
                       ),
                  ],
                ),
              ),
            ),
         ],),
    );
  }

  Row row_item( image1,String text1,String text2,String image2,String text3,String text4,String image3,String text5,String text6,String screenname,BuildContext context)
  {
    return Row(
      children: <Widget>[
        Expanded(
          flex:1,
            child:GestureDetector(
            onTap:(){
              if(screenname=="retail")
                {
                  gesture_handler().openPDFView(context, 'assets/plans/gfloorshop.pdf',"l");
                }
              else
              gesture_handler().openPDFView(context, 'assets/plans/typicalplan.pdf',"l");
            },
            child:typical_plan_row(image1,text1,text2,Colors.lightGreen[600]),
        ),
        ),
        Expanded(
          flex:1,
        child:GestureDetector(
    onTap:(){
      if(screenname=="retail")
      {
        gesture_handler().openPDFView(context, 'assets/plans/ffloorshop.pdf',"l");
      }
      else
  gesture_handler().openPDFView(context, 'assets/plans/typicalplanterrace.pdf',"l");
  },
            child:typical_plan_row(image2,text3,text4,Colors.pink),
        ),
        ),
  Visibility(
  child:
        Expanded(
          flex:1,
  child:GestureDetector(
  onTap:(){
    if(screenname=="4bhk" || screenname=="3bhk2")
  gesture_handler().openPDFView(context, 'assets/plans/typicalplan345bhk.pdf',"l");
    else if(screenname=="retail")
    {
      gesture_handler().openPDFView(context, 'assets/plans/sfloorshop.pdf',"l");
    }
    else
      gesture_handler().openPDFView(context, 'assets/plans/typicalplan234bhk.pdf',"l");

  },
            child:typical_plan_row(image3,text5,text6,Colors.deepOrange),
  ),
        ),
    visible:image3 == "" ? false : true,
  ),
      ],
    );
  }

  }
