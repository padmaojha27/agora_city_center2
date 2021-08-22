import 'package:flutter/material.dart';
import 'package:agora_city_center/HomeScreen.dart';
import 'package:agora_city_center/utilities/colors.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';


class VerificationScreen extends StatefulWidget {
  String phonenumber;
  VerificationScreen(String pn){this.phonenumber=pn;}
  VerificationScreenWidget createState() => VerificationScreenWidget(phonenumber);
}

class VerificationScreenWidget extends State {
  String pn,verificationId,smssent,smsCode;
  Timer timer;
  bool isLoading;
  BuildContext dialogContext;




  addToSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('phoneno', pn);
  }



  Future<void> verfiyPhone(String phoneNo) async{
    print('in verify phone');
    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId){
      this.verificationId = verId;
      print("AUTOR Verification ID :"+verId);
    };
    final PhoneCodeSent smsCodeSent= (String verId, [int forceCodeResent]) {
      this.verificationId = verId;
      print("SMSCODE Verification ID :"+verId);
    /*  smsCodeDialoge(context).then((value){
        print("Code Sent");
      });*/
      print("Code Sent");
    };

    final PhoneVerificationCompleted verifiedSuccess= (AuthCredential auth){
     // gotoSecondActivity(context);
        //isLoading=false;
       // Navigator.pop(dialogContext);
    };

    final PhoneVerificationFailed verifyFailed= (FirebaseAuthException e){
      print('FIREBASE ERROR : '+ '${e.message}');
       };
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNo,
      timeout: const Duration(seconds: 20),
      verificationCompleted : verifiedSuccess,
      verificationFailed: verifyFailed,
      codeSent: smsCodeSent,
      codeAutoRetrievalTimeout: autoRetrieve,

    );

  }


  /*PREVIOUS CODE*/
/*
  Future<void> verifyPhone(phoneNo) async{
    final PhoneVerificationCompleted verified = (AuthCredential authResult){

      //  _auth.signInWithCredential(_credential).then((AuthResult result){
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => HomeScreen()
      ));
      */
/*  }).catchError((e){
        print(e);
      });*//*

    };
    final PhoneVerificationFailed verificationFailed = (FirebaseAuthException authException){
      print('${authException.message}');
    };

    final PhoneCodeSent smsSent = (String verId,[int forceResend]){
      this._verificationId = verId;
    };

    final PhoneCodeAutoRetrievalTimeout autoTimeout = (String verId){
      this._verificationId = verId;
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: pn,
        timeout: Duration(seconds: 60),
        verificationCompleted: verified,
        verificationFailed: verificationFailed,
        codeSent: smsSent,
        codeAutoRetrievalTimeout: null
    );
  }
*/



  @override
  initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 2), (Timer t) => isLoading);
    Firebase.initializeApp().whenComplete(() {
      print("completed");
      setState(() {});
    });
    verfiyPhone(pn);
   /* showDialog(context: context,
        builder: (BuildContext context)
    {
      dialogContext=context;
      return _getLoadingIndicator();
    });*/

  }
  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _smsController = TextEditingController();
  String _verificationId;

  VerificationScreenWidget(String pn)
  {
    this.pn=pn;
    print(pn);
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  gotoSecondActivity(BuildContext context){
    Navigator.of(context).push(_createRoute());
  }

  final verifyCode =TextEditingController();


  Future<void> signIn(String smsCode) async{
    final AuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId,
      smsCode: smsCode,);

    await FirebaseAuth.instance.signInWithCredential(
        credential).then((user) {

      if(user != null){
        //Navigator.of(context).pop();
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => HomeScreen(),),
        );
      }
      else{
        //Navigator.of(context).pop();
      //  signIn(smssent);
        Fluttertoast.showToast(
            msg: 'InCorrect verification code entered.',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.SNACKBAR,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }

//      verifyCode.text=smsCode;
 //     this.smsCode = smsCode;

    }).catchError((e){
      print(e);

    });
  }



  @override
  Widget build(BuildContext context) {

    return
    /*  isLoading ? CircularProgressIndicator(backgroundColor: colors.white,
        valueColor: AlwaysStoppedAnimation(colors.colorPrimaryDark),
        strokeWidth: 10,)
          :*/
      Scaffold(
    resizeToAvoidBottomInset: false,
    body:
    Center(
    child:Container(
    child:Expanded(
    flex:1,
    child: Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment:MainAxisAlignment.center,
    children: <Widget>[
    Container(
    width: 350,
    // padding: EdgeInsets.all(10.0),
    child: Text("VERIFICATION",
    style: TextStyle(color: colors.grey_80, fontSize: 22,fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
    ),
    ),
    Container(
    width: 200,
    height:100,
    child : Image.asset('assets/images/app_icons/balajitransparent.png', alignment:Alignment.center,fit:BoxFit.scaleDown),
    ),
    Container(

    //padding: EdgeInsets.all(10.0),
    child: Image.asset('assets/images/app_icons/img_code_verification.png', height: 200,width: 220),

    ),
    Container(
    width: 280,
    // padding: EdgeInsets.all(10.0),
    child: Text(Strings.verificationText,
    style: TextStyle(color: colors.grey_60, fontSize: 18,fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
    ),
    ),

    Container(
    width: 200,
    child: TextField(
    onChanged: (value){
    this.smssent = value;
    },
    controller: verifyCode,
    keyboardType: TextInputType.number,
    style: TextStyle(color: colors.grey_90, fontSize: 16),
    decoration: InputDecoration(hintText: 'Code'),
    )
    ),

    Container(
    margin: EdgeInsets.only(top : 20.0),
    padding:EdgeInsets.all(10),
    width: MediaQuery.of(context).size.width * 0.62,
    child:RaisedButton(
    onPressed: () {
    //gotoSecondActivity(context);
     /* if(verifyCode.text== smsCode){
        addToSP();
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => HomeScreen()
        ));
      }
      else
        {
          Fluttertoast.showToast(
              msg: 'InCorrect verification code entered.',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.SNACKBAR,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 16.0
          );
        }*/
      smsCode = verifyCode.text.trim();

      signIn(smsCode);
      addToSP();
    },

    // onPressed: getValues,
    color: Colors.red[400],
    shape: new RoundedRectangleBorder(
    borderRadius: new BorderRadius.circular(30.0),
    ),
    padding:EdgeInsets.only(left:5.0,right:5.0,top:10,bottom:10),

    textColor: Colors.white,
    child: Text('VERIFY'),
    ),
    ),
    ],
    ),
    )
    ),
    ),

    );

  }



}
