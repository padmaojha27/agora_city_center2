import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/colors.dart';

class ProjectDetails_BankLoans extends StatefulWidget {
  ProjectDetails_BankLoans_Widget createState() => ProjectDetails_BankLoans_Widget();
}

class ProjectDetails_BankLoans_Widget extends State {
  goBackToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(Strings.screenTitle_bankloans),

      ),

      body:
      SingleChildScrollView(
        child:
        Container(
          margin: EdgeInsets.all( 10.0),

          child:Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                color: colors.colorPrimaryDark,
                margin: EdgeInsets.only(top: 10.0, left: 0.0,right:0.0,bottom:0.0),
                padding: EdgeInsets.all(8.0),
                child: Text(Strings.banktitle1,
                  style: TextStyle(
                      color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
    bankloan_widget('assets/images/app_icons/kotaklogo.jpg', Strings.bankcom1),
              bankloan_widget('assets/images/app_icons/liclogo.jpg', Strings.bankcom2),
              Container(
                alignment: Alignment.centerLeft,
                color: colors.colorPrimaryDark,
                margin: EdgeInsets.only(top: 10.0, left: 0.0,right:0.0,bottom:0.0),
                padding: EdgeInsets.all(8.0),
                child: Text(Strings.banktitle2,
                  style: TextStyle(
                      color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              bankloan_widget('assets/images/app_icons/sbilogo.png', Strings.bankres1),
              bankloan_widget('assets/images/app_icons/kotaklogo.jpg', Strings.bankres2),
              bankloan_widget('assets/images/app_icons/ucologo.jpg', Strings.bankres3),
              bankloan_widget('assets/images/app_icons/centlogo.jpg', Strings.bankres4),
              bankloan_widget('assets/images/app_icons/liclogo.jpg', Strings.bankres5),

            ],
          ),
        ),
      ),

    );
  }

  Card bankloan_widget(String image,String bankname){
    return
      Card(
        color:colors.gray,
        margin: EdgeInsets.only(top: 5.0),
        child:Material(
        child:InkWell(
        onTap:(){},
        child:Row(
          children: <Widget>[
            Container(
              alignment:Alignment.center,
              margin: EdgeInsets.only(top: 0.0, bottom: 0.0),
              padding:EdgeInsets.all(12),
              height: 60,
              width: 60,
              child: Image.asset(
                image,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 2.0, right: 2.0, bottom: 0.0,top:0.0),
              alignment:Alignment.center,
              child:Text(
                  bankname,
                  style: TextStyle(color: colors.colorPrimaryDark,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center
              ),
            ),


          ],
        ),
    ),),
      );

  }

}




