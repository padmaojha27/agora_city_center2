import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/top_bar.dart';
import 'package:agora_city_center/utilities/colors.dart';
import 'package:agora_city_center/utilities/app_constants.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/rendering.dart';


class BookNowScreen extends StatefulWidget {
  BookNowScreenWidget createState() => BookNowScreenWidget();
}

class BookNowScreenWidget extends State {
String radioItem;
FocusNode myFocusNode = new FocusNode();
FocusNode myFocusNode2 = new FocusNode();
FocusNode myFocusNode3 = new FocusNode();
  String fname,lname,email,selectedBuyOption="",phoneno="",unit="";
final firstName =TextEditingController();
final lastName =TextEditingController();
final userEmail =TextEditingController();
var mobile = TextEditingController();

int _value = 1;
int groupValue;
  @override
  void initState() {
   super.initState();
   myFocusNode = FocusNode();
   myFocusNode2 = FocusNode();
   myFocusNode3 = FocusNode();
  }

void _requestFocus(){
  setState(() {
    FocusScope.of(context).requestFocus(myFocusNode);
  });
}

void _requestFocus2(){
  setState(() {
    FocusScope.of(context).requestFocus(myFocusNode2);
  });
}

void _requestFocus3(){
  setState(() {
    FocusScope.of(context).requestFocus(myFocusNode3);
  });
}


String validateEmail(String email) {
    String pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = new RegExp(pattern);
    if (email.length == 0) {
      return 'Please enter Email';
    }
    else if (!regExp.hasMatch(email)) {
      return 'Please enter valid email ';
    }
    return null;
  }

  String validateName(String name) {

    String pattern = r"^[a-zA-Z ]*$";
    RegExp regExp = new RegExp(pattern);
    if (name.length == 0) {
      return 'Please enter name';
    }
    else if (!regExp.hasMatch(name)) {
      return 'Please enter valid name';
    }
    return null;
  }





  List<String> buyList = [
    'Please Select',
   'Commercial',
    'Residential',
    'Club Membership',
      ];


@override
void dispose() {
  super.dispose();
}
  void something(int e){
    setState((){
      if(e==1){
        groupValue = 1;
        unit="Corporate Offices";
      }
      else if(e==2){
        groupValue = 2;
      unit="Retail/Showroom";
      }
      else if(e==3){
        groupValue = 3;
      unit="2 BHK";
      }
      else if(e==4){groupValue = 4;
      unit="3 BHK";
      }
      else if(e==5){groupValue = 5;
      unit="4 BHK";
      }
      else if(e==6){groupValue = 6;
      unit="5 BHK";
      }
      else if(e==7){groupValue = 7;
      unit="6 BHK";
      }
      else if(e==9){groupValue = 9;
      unit="Silver Membership";
      }
      else if(e==10){groupValue = 10;
      unit="Gold Membership";
      }
      else if(e==11){groupValue = 11;
      unit="Diamond Membership";
      }
      else if(e==12){groupValue = 12;
      unit="Premium Membership";
      }
      else if(e==8){groupValue = 8;
      unit="Corporate Membership";
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: /*AppBar(
        automaticallyImplyLeading: true,
        title: Text(Strings.screenTitle_BookNow),
      ),
*/
      top_bar().get_app_bar("Register Yourself",context),

      body:
      Container(
      margin: EdgeInsets.all(16),
      child:Expanded(
      flex:1,
      child: SingleChildScrollView(


     child: Column(
           mainAxisSize: MainAxisSize.min,
          crossAxisAlignment : CrossAxisAlignment.start,
          children: [
            Container(
              child:   Text("Booking Details",
                style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
                padding: EdgeInsets.only(top:15.0,left:5.0,right:5.0,bottom:5.0),
                child: TextField(
                  focusNode: myFocusNode,
                  onTap: _requestFocus,
                  controller: firstName,
                  keyboardType: TextInputType.text,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'First Name',
                    labelText: 'First Name',
                    labelStyle: TextStyle(
                        color: myFocusNode.hasFocus ? colors.sbglogoorange : Colors.grey
                    ),),
                  style: TextStyle(color: colors.colorPrimaryDark, fontSize: 15),

                )
            ),
            Container(
                padding: EdgeInsets.only(top:5.0,left:5.0,right:5.0,bottom:5.0),
                child: TextField(
                  focusNode: myFocusNode2,
                  onTap:_requestFocus2,
                  controller: lastName,
                  keyboardType: TextInputType.text,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Last Name',
                    labelText: 'Last Name',
                    labelStyle: TextStyle(
                        color: myFocusNode2.hasFocus ? colors.sbglogoorange : Colors.grey
                    ),),
                  style: TextStyle(color: colors.colorPrimaryDark, fontSize: 15),

                )
            ),
            Container(
                padding: EdgeInsets.only(top:5.0,left:5.0,right:5.0,bottom:5.0),
                child: TextField(
                  focusNode: myFocusNode3,
                  onTap:_requestFocus3,

                  controller: userEmail,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Email',
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        color: myFocusNode3.hasFocus ? colors.sbglogoorange : Colors.grey
                    ),),

                  style: TextStyle(color: colors.colorPrimaryDark, fontSize: 15),

                )
            ),
            Container(
              padding: EdgeInsets.only(top : 20.0),
              child:   Text('Mobile',

                style: TextStyle(color: colors.black, fontSize: 14,fontWeight:FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                Container(
                  child:   Text(constants.phoneno,

                    style: TextStyle(color: colors.blue, fontSize: 14),
                    textAlign: TextAlign.left,
                  ),
                ),
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Container(
                      width:100,
                    ),
                    Container(
                  alignment: Alignment.centerRight,
                  child:   Text("\t\t\tVerified",
                    style: TextStyle(color: colors.grey_60, fontSize: 14,fontWeight:FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                    Container(
                      width:10,
                    ),
                Container(
                  padding: EdgeInsets.only(top : 0.0),
                  child:   Icon(
                    Icons.verified_user,
                    color:colors.greenlatest,
                    size: 24.0,
                  ),
                ),
                  ],
                ),
    ],
    ),
            Container(
              padding: EdgeInsets.only(top : 10.0),
              child:   Text("Want To Buy",
                style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
      IntrinsicWidth(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
     // Container(
       // margin: EdgeInsets.all(10.0),
        //child:
        DropdownButton(
            value: _value,
            items: [
              DropdownMenuItem(
                child: Text("Please Select One"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Commercial"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Residential"),
                value: 3,
              ),
              DropdownMenuItem(
                  child: Text("Club Membership"),
                  value: 4,
              ),
            ],
            onChanged: (value) {
              setState(() {
                _value = value;
                selectedBuyOption=value.toString();
                print(value.toString());
              });
            }),

        Visibility(
          child:buyWidgetOption1(_value),
          visible: _value > 1 ? true : false,
        ),
      //),
        ],
      ),
      ),
      Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
            Container(
              margin: EdgeInsets.only(top : 10.0,left:10.0,bottom:10.0,right:10.0),
              child:RaisedButton(
                // onPressed: getValues,
                  color: colors.colorPrimaryDark,
                  textColor: Colors.white,
                  child: Text('SUBMIT'),
                  onPressed: () {
                    String chkErrorName = validateName(firstName.text);
                    String chkErrorlName = validateName(lastName.text);
                    String chkErrorEmail = validateEmail(userEmail.text);

                    if(chkErrorName!=null)
                      {
                        Fluttertoast.showToast(
                            msg: chkErrorName,
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.SNACKBAR,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    else if(chkErrorlName!=null)
                      {
                        Fluttertoast.showToast(
                            msg: 'Enter Valid Last Name',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.SNACKBAR,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    else if(chkErrorEmail!=null)
                      {
                        Fluttertoast.showToast(
                            msg: chkErrorEmail,
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.SNACKBAR,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 16.0);

                      }
                    else if(selectedBuyOption=="" || selectedBuyOption=="Please Select One")
                    {
                      Fluttertoast.showToast(
                          msg: 'Please select any one option from drop down',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.SNACKBAR,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                    else if(unit=="")
                    {
                      Fluttertoast.showToast(
                          msg: 'Please select any one option',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.SNACKBAR,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 16.0);
                    }
                    else
                      {
                        firstName.text="";
                        lastName.text="";
                        userEmail.text="";




                        Fluttertoast.showToast(
                            msg: "Thank you for showing interest in Shree Balaji Group.",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.SNACKBAR,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 16.0);

                      }

                  }),
            ),
          ],
      ),
          ],
        ),
      ),
    ),
      ),
    );
  }


  Container buyWidgetOption1(int val)
  {
    switch(val) {
      case 1:
        print('nothing to show');

        return
          Container(

          );
        break;
      case 2:
    return
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

             new Radio(
              value: 1,
              groupValue: groupValue,
              onChanged: (int e) => something(e),
            ),
            new Text(
              'Corporate Offices',
              style: new TextStyle(fontSize: 12.0),
            ),

             Radio(
              value: 2,
              groupValue: groupValue,
              onChanged: (int e) => something(e),
            ),
            new Text(
              'Retail/Showroom',
              style: new TextStyle(
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      );
    break;
      case 3:
        return
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Radio(
                  value: 3,
                  groupValue: groupValue,
                  onChanged: (int e) => something(e),
                ),
                new Text(
                  '2 BHK',
                  style: new TextStyle(fontSize: 12.0),
                ),],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Radio(
                  value: 4,
                  groupValue: groupValue,
                  onChanged: (int e)=>something(e),
                ),
                new Text(
                  '3 BHK',
                  style: new TextStyle(
                    fontSize: 12.0,
                  ),
                ),],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Radio(
                  value: 5,
                  groupValue: groupValue,
                  onChanged: (int e)=>something(e),
                ),
                new Text(
                  '4 BHK',
                  style: new TextStyle(
                    fontSize: 12.0,
                  ),
                ),],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Radio(
                  value: 6,
                  groupValue: groupValue,
                  onChanged: (int e)=>something(e),
                ),
                new Text(
                  '5 BHK',
                  style: new TextStyle(
                    fontSize: 12.0,
                  ),
                ),],),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Radio(
                  value: 7,
                  groupValue: groupValue,
                  onChanged: (int e)=>something(e),
                ),
                new Text(
                  '6 BHK',
                  style: new TextStyle(
                    fontSize: 12.0,
                  ),
                ),],),
              ],
            ),
          );
        break;
      case 4:
        return
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
            children: <Widget>[
              new Radio(
                  value: 8,
                  groupValue: groupValue,
                  onChanged: (int e)=>something(e),
                ),
                new Text(
                  'Corporate Membership',
                  style: new TextStyle(fontSize: 12.0),
                ),
            ],
                ),
    Row(
    children: <Widget>[

    new Radio(
                  value: 9,
                  groupValue: groupValue,
                  onChanged: (int e )=>something(e),
                ),
                new Text(
                  'Silver Membership',
                  style: new TextStyle(
                    fontSize: 12.0,
                  ),
                ),
    ],),
  Row(
  children: <Widget>[

  new Radio(
                  value: 10,
                  groupValue: groupValue,
                  onChanged: (int e)=> something(e),
                ),

                new Text(
                  'Gold Membership',
                  style: new TextStyle(
                    fontSize: 12.0,
                  ),
                ),],),
                  Row(
    children: <Widget>[

    new Radio(
                  value: 11,
                  groupValue: groupValue,
                  onChanged: (int e)=>something(e),
                ),
                new Text(
                  'Diamond Membership',
                  style: new TextStyle(
                    fontSize: 12.0,
                  ),
                ),],),
  Row(
  children: <Widget>[

  new Radio(
                  value: 12,
                  groupValue: groupValue,
                  onChanged: (int e)=>something(e),
                ),
                new Text(
                  'Premium Membership',
                  style: new TextStyle(
                    fontSize: 12.0,
                  ),
                ),
            ],
                ),

              ],
            ),
          );
        break;


    }

  }

}

