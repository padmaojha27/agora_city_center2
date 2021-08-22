import 'package:flutter/material.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/colors.dart';


class ProjectDetails_Specification extends StatefulWidget {
  ProjectDetails_Specification_Widget createState() => ProjectDetails_Specification_Widget();
}

class ProjectDetails_Specification_Widget extends State {
  goBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(Strings.screenTitle_Specification),
    ),

    body:
    SingleChildScrollView(
    child:
    Container(
      margin: EdgeInsets.all( 10.0),

      child:Column(
        children: <Widget>[
      specification_widget(Strings.specificationtitle1, Strings.specificationdesc1,TextAlign.center),
      specification_widget(Strings.specificationtitle2, Strings.specificationdesc2,TextAlign.left),
          specification_widget(Strings.specificationtitle3, Strings.specificationdesc3,TextAlign.center),
          specification_widget(Strings.specificationtitle4, Strings.specificationdesc4,TextAlign.left),
          specification_widget(Strings.specificationtitle5, Strings.specificationdesc5,TextAlign.center),
          specification_widget(Strings.specificationtitle6, Strings.specificationdesc6,TextAlign.left),
          specification_widget(Strings.specificationtitle7, Strings.specificationdesc7,TextAlign.left),
          specification_widget(Strings.specificationtitle8, Strings.specificationdesc8,TextAlign.left),

      ],
         ),
     ),
    ),

        );
  }

Card specification_widget(String title,String desc,TextAlign descAlign){
    return
      Card(
        margin: EdgeInsets.only(top: 20.0),
        child:Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              color: colors.colorPrimaryDark,
              margin: EdgeInsets.only(top: 0.0, left: 0.0),
              padding: EdgeInsets.all(8.0),
              child: Text(title,
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'opensansbold'),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 0.0, left: 0.0),
              padding: EdgeInsets.all(8.0),
              child: Text(desc,
                style: TextStyle(
                    color: colors.colorPrimaryDark, fontSize: 16,fontFamily: 'opensansregulat'),
                textAlign: descAlign,
              ),
            ),


          ],
        ),
      );

}

}




