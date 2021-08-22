import 'package:flutter/material.dart';
import 'package:agora_city_center/VerificationScreen.dart';
import 'package:agora_city_center/utilities/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreenWidget createState() => LoginScreenWidget();
}

class LoginScreenWidget extends State {
String phoneNumber;


addToSP() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('phoneno', "+91"+verifyCode.text);
}

String validateMobile(String value) {
  String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0) {
    return 'Please enter mobile number';
  }
  else if (!regExp.hasMatch(value)) {
    return 'Please enter valid mobile number';
  }
  return null;
}


Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => VerificationScreen(phoneNumber),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

  gotoverifyscreen(BuildContext context){
  phoneNumber="+91"+verifyCode.text;
    Navigator.of(context).push(_createRoute());
  }
  final verifyCode =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false,
      body: Center(
      child:Container(
        margin: EdgeInsets.only(top:40.0,bottom:20.0,left:20.0,right:20.0),
           child:Expanded(
         flex:1,
               child: SingleChildScrollView(
               child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 120,
              height:100,
              child : Image.asset('assets/images/app_icons/balajitransparent.png', alignment:Alignment.center,fit:BoxFit.scaleDown),

            ),
            Container(
              width: 350,
              padding: EdgeInsets.all(10.0),
              child:  Image.asset('assets/images/app_icons/img_number_verification.png', height: 220,width: 220),

            ),
            Container(
              width: 350,
              // padding: EdgeInsets.all(10.0),
              child:   Text("Verify Your Number",
                style: TextStyle(color: colors.grey_80, fontSize: 20,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

            ),

            Container(
              //  width: 350,
              // padding: EdgeInsets.all(10.0),
              margin:EdgeInsets.only(top:10.0),

              child: Text("Please enter your mobile number to receive a verification code",
                style: TextStyle(color: colors.grey_60, fontSize: 14),
                textAlign: TextAlign.center,),
            ),

            Container(
              margin:EdgeInsets.only(top:20.0),
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment:MainAxisAlignment.center,
                  //             crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      width: 30,
                      //  padding: EdgeInsets.all(10.0),
                      child: Text("+91",
                        style: TextStyle(color: colors.grey_80, fontSize: 16),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                        width: 200,
                        child: TextField(
                          controller: verifyCode,
                          keyboardType: TextInputType.number,
                          style: TextStyle(color: colors.grey_90, fontSize: 16),
                          decoration: InputDecoration(hintText: 'Phone Number'),


                        )
                    ),
                  ]
              ),
            ),
            Container(
              margin: EdgeInsets.only(top : 20.0),
              padding:EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.62,
              child:RaisedButton(
                // onPressed: getValues,
                  color: Colors.red[400],
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding:EdgeInsets.only(left:5.0,right:5.0,top:10,bottom:10),

                  textColor: Colors.white,
                  child: Text('CONTINUE'),
                  onPressed: () {
                    String chkerror = validateMobile("+91"+verifyCode.text);
                    if(chkerror==null) {
                   //   addToSP();
                      gotoverifyscreen(context);
                    }
                    else
                      {
                        Fluttertoast.showToast(
                            msg: chkerror,
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.SNACKBAR,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      }
                  }),
            ),
          ],
        ),
            )
      ),
      ),
      ),
    );
  }

}
