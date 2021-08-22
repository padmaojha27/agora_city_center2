import 'package:flutter/material.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class ContactUsScreen extends StatefulWidget {
  ContactUsScreenWidget createState() => ContactUsScreenWidget();
}

class ContactUsScreenWidget extends State {


  launch_browser(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Not supported");
    }
  }

  FocusNode myFocusNode = new FocusNode();
  FocusNode myFocusNode2 = new FocusNode();
  FocusNode myFocusNode3 = new FocusNode();
  FocusNode myFocusNode4 = new FocusNode();
  FocusNode myFocusNode5 = new FocusNode();


  final userName =TextEditingController();
  final userEmail =TextEditingController();
  final userPhone =TextEditingController();
  final userSubject =TextEditingController();
  final userMessage =TextEditingController();
  bool _validate = false;
  bool _validate2 = false,_validate3=false,_validate4=false,_validate5=false,_validate6=false;

  _launch(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Not supported");
    }
  }

  bool validateEmail(String email)
  {
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
  }

  bool validatePhone(String phone){
    return RegExp(r"^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$").hasMatch(phone);
  }

  bool validateName(String name){
     return(RegExp(r"^[a-zA-Z ]*$").hasMatch(name));
  }

  bool validateSubject(String subject){
    return RegExp(r"^[a-zA-Z0-9 ]*$").hasMatch(subject);
  }

  bool validateMessage(String message){
    return RegExp(r"^[a-zA-Z0-9 ]*$").hasMatch(message);
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

  void _requestFocus4(){
    setState(() {
      FocusScope.of(context).requestFocus(myFocusNode4);
    });
  }
  void _requestFocus5(){
    setState(() {
      FocusScope.of(context).requestFocus(myFocusNode5);
    });
  }


  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    myFocusNode2 = FocusNode();
    myFocusNode3 = FocusNode();
    myFocusNode4 = FocusNode();
    myFocusNode5 = FocusNode();

    //  myFocusNode.addListener(_onFocusChange);
  }

  void _onFocusChange(){
    //debugPrint("Focus: "+myFocusNode.hasFocus.toString());
  }


  @override
  void dispose() {
    myFocusNode.dispose();
    myFocusNode2.dispose();
    myFocusNode3.dispose();
    myFocusNode4.dispose();
    myFocusNode5.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Contact Us"),
      ),

      body:
      //    Card(
      SingleChildScrollView(

        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment : CrossAxisAlignment.start,
           children: [
            Container(
              alignment:Alignment.center,
          child:   Text("Inquiry",
          style: TextStyle(color: colors.colorPrimaryDark, fontSize: 25,fontFamily: 'serif'),
          textAlign: TextAlign.center,
        ),
      ),
            Container(
                padding: EdgeInsets.only(top:5.0,left:10.0,right:5.0,bottom:5.0),
                child: TextField(
                  focusNode: myFocusNode,
                  onTap: _requestFocus,
                  controller: userName,
                  keyboardType: TextInputType.text,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Name',
                      labelText: 'Name',
                      labelStyle: TextStyle(
                          color: myFocusNode.hasFocus ? colors.sbglogoorange : Colors.grey
                      ),
                      errorText: _validate ? 'Value Can\'t Be Empty' :(_validate2 ? 'Enter Valid Name' : null)),
                    style: TextStyle(color: colors.tablehead,),
                )
            ),
            Container(
                padding: EdgeInsets.only(top:5.0,left:10.0,right:5.0,bottom:5.0),
                child: TextField(
                 focusNode: myFocusNode2,
                  onTap: _requestFocus2,

                  controller: userEmail,
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Email',
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          color: myFocusNode2.hasFocus ? colors.sbglogoorange : Colors.grey
                      ),
                      errorText: _validate ? 'Value Can\'t Be Empty' :(_validate3 ? 'Enter Valid Email' : null)),
                
                  style: TextStyle(color: colors.tablehead,),
                )
            ),
            Container(
                padding: EdgeInsets.only(top:5.0,left:10.0,right:5.0,bottom:5.0),
                child: TextField(
                  focusNode: myFocusNode3,
                  onTap: _requestFocus3,
                  controller: userPhone,
                  keyboardType: TextInputType.number,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Phone',
                      labelText: 'Phone',
                      labelStyle: TextStyle(
                          color: myFocusNode3.hasFocus ? colors.sbglogoorange : Colors.grey
                      ),
                      errorText: _validate ? 'Value Can\'t Be Empty' :(_validate4 ? 'Enter Valid phone' : null)),
                  style: TextStyle(color: colors.tablehead,),
                )
            ),
            Container(
                padding: EdgeInsets.only(top:5.0,left:10.0,right:5.0,bottom:5.0),
                child: TextField(
                  focusNode: myFocusNode4,
                  onTap: _requestFocus4,
                  controller: userSubject,
                  keyboardType: TextInputType.text,
                  autocorrect: true,
                  decoration: InputDecoration(hintText: 'Subject',
                      labelText: 'Subject',
                      labelStyle: TextStyle(
                          color: myFocusNode4.hasFocus ? colors.sbglogoorange : Colors.grey
                      ),
                     errorText: _validate ? 'Value Can\'t Be Empty' :(_validate5 ? 'Enter Valid subject' : null)),
           
                  style: TextStyle(color: colors.tablehead,),

                )
            ),
            Container(
              height:150,
                padding: EdgeInsets.only(top:5.0,left:10.0,right:5.0,bottom:0.0),
                child: TextField(
                  focusNode: myFocusNode5,
                  onTap: _requestFocus5,
                  controller: userMessage,
                  keyboardType: TextInputType.multiline,
                  autocorrect: true,
                  maxLines: 5,
                  decoration: InputDecoration(hintText: 'Your Message',
                      labelText: 'Your Message',
                      labelStyle: TextStyle(
                          color: myFocusNode5.hasFocus ? colors.sbglogoorange : Colors.grey
                      ),
                      errorText: _validate ? 'Value Can\'t Be Empty' :(_validate6 ? 'Enter Valid message' : null)),
                
                  style: TextStyle(color: colors.tablehead,),

                )
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
                  child: Text('SUBMIT',
                      ),
                  onPressed: () {
                    setState(() {
                      userName.text.isEmpty ? _validate = true : _validate = false;
                    /*  validateName(userName.text) ? _validate2 = false:_validate2=true;
                      userEmail.text.isEmpty ? _validate = true : _validate = false;
                      validateEmail(userEmail.text) ? _validate2 = false:_validate2=true;
                      userPhone.text.isEmpty ? _validate = true : _validate = false;
                      validatePhone(userPhone.text) ? _validate2 = false:_validate2=true;
                      userSubject.text.isEmpty ? _validate = true : _validate = false;
                      validateSubject(userSubject.text) ? _validate2 = false:_validate2=true;
                      userEmail.text.isEmpty ? _validate = true : _validate = false;
                      validateEmail(userEmail.text) ? _validate2 = false:_validate2=true;
*/

                    if(!validateName(userName.text)){
                      _validate2=true;
                    }
                    else if(!validateEmail(userEmail.text)){
                      _validate3=true;

                    }
                    else if(!validatePhone(userPhone.text)){
                      _validate4=true;

                    }
                    else if(!validateSubject(userSubject.text)){
                      _validate5=true;

                    }
                      else if(!validateMessage(userMessage.text)){
                      _validate6=true;

                      }
                      else
                      {
                        _validate2=false;
                        _validate3=false;
                        _validate4=false;
                        _validate5=false;
                        _validate6=false;
                        userName.text="";
                        userEmail.text="";
                        userPhone.text ="";
                        userSubject.text ="";
                        userMessage.text="";
                        Fluttertoast.showToast(
                            msg: "Thank you for showing interest in Shree Balaji Group.",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.SNACKBAR,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 15.0 );
                      }

                    });

                  }),
            ),
],
      ),
            Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Divider(
                  color: colors.colorPrimaryDark,
                  height: 5,
                  thickness:5,
                )),
            Container(
              margin:EdgeInsets.all(10),

              child:Column(
                children: <Widget>[
              Row(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
            Container(
              padding: EdgeInsets.only(top : 10.0),
              child:   Text("Call Now - Number 1\t\t\t\t",
                style: TextStyle(color: colors.colorPrimaryDark, fontSize: 20,fontFamily:'fontregular'),
                textAlign: TextAlign.left,
              ),
            ),
                  Container(
                    padding: EdgeInsets.only(top : 10.0),
                    child:   Image.asset(
                      'assets/images/app_icons/hand.png',
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top : 10.0),
                    margin:EdgeInsets.all(20),
                  ),
                  Container(
                    alignment:Alignment.centerRight,
                    padding: EdgeInsets.only(top : 10.0),
                    child:Material(
                      child:InkWell(
                        onTap: () {
                          _launch("tel:08690433433");
                        },
                    child:  Icon(
                        Icons.call,
                        size: 30.0,
                      color:colors.colorPrimaryDark
                      ),
                      ),
                    ),
                  ),
            ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top : 10.0),
                  child:   Text("Call Now - Number 2\t\t\t\t",
                    style: TextStyle(color: colors.colorPrimaryDark, fontSize: 20,fontFamily:'fontregular'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top : 10.0),
                  child:   Image.asset(
                    'assets/images/app_icons/hand.png',
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top : 10.0),
                  margin:EdgeInsets.all(20),
                ),
                Container(
                  padding: EdgeInsets.only(top : 10.0),
                  child:Material(
                    child:InkWell(
                      onTap: () {
                        _launch("tel:08690915915");
                      },
                      child:  Icon(
                          Icons.call,
                          size: 30.0,
                          color:colors.colorPrimaryDark
                      ),

                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment:Alignment.centerRight,
                  padding: EdgeInsets.only(top : 10.0),
                  child:   Text("Call Now - Number 3\t\t\t\t",
                    style: TextStyle(color: colors.colorPrimaryDark, fontSize: 20,fontFamily:'fontregular'),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top : 10.0),
                      child:   Image.asset(
                    'assets/images/app_icons/hand.png',
                  ),
                ),


                Container(
                  padding: EdgeInsets.only(top : 10.0),
                  margin:EdgeInsets.all(20),
                ),
                Container(
                  padding: EdgeInsets.only(top : 10.0),
                  child:Material(
                    child:InkWell(
                      onTap: () {
                        _launch("tel:08690853853");
                      },

                      child:  Icon(
                      Icons.call,
                      size: 30.0,
                      color:colors.colorPrimaryDark
                  ),
                    ),),
                ),
              ],
            ),
           ],
         ),
        ),
              Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                child:
        Divider(
                  color: colors.colorPrimaryDark,
                  height: 5,
                  thickness:5,
                ),
      ),

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
              Strings.head_site_address,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18.0,fontFamily:'fontregular',color:colors.colorPrimary),
              maxLines: 6,)
          ),
      ],
      ),
            Row(
              children: [
                Container(
                  margin:EdgeInsets.only(left:10,top:10,bottom:10),

                  height:30,
                  width:30,
                  padding: EdgeInsets.only(top : 0.0),
                  child : Image.asset('assets/images/app_icons/call.png'),
                ),
                Container(
                  margin:EdgeInsets.only(left:10,top:10,bottom:10,right:10),
                  child:InkWell(
                    onTap: () {
                      _launch("tel:08690915915");
                    },
                  child:Text(
                      Strings.head_site_phone_number,
                      style: TextStyle(
                        decoration:TextDecoration.underline,
                        fontSize: 18.0,fontFamily:'fontregular',color:colors.colorPrimary,
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
                  height:30,width:30,
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
                    Strings.head_site_email,
                    style: TextStyle(
                      decoration:TextDecoration.underline,
                      fontSize: 16.0,fontFamily:'fontregular',color:colors.colorPrimary,
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
                  height:30,width:30,
                  child : Image.asset('assets/images/app_icons/website.png'),
                ),
                Container(
                  margin:EdgeInsets.only(left:10,top:10,bottom:10,right:10),
                  child:GestureDetector(
                    onTap:(){
                      launch_browser("https://www.shreebalajiconstruction.com");
                    },
                  child:Text(
                    Strings.head_site_website,
                    style: TextStyle(
                      decoration:TextDecoration.underline,
                      fontSize: 16.0,fontFamily:'fontregular',color:colors.colorPrimary,
                    ),
                  ),
                  ),
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Divider(
                  color: colors.colorPrimaryDark,
                  height: 5,
                  thickness:5,
                )),
            Row(
              children: [
                Container(
                  margin:EdgeInsets.only(left:10,top:10,bottom:10),
                  height: 30,width:30,
                  child : Image.asset('assets/images/app_icons/developer64.png'),
                ),
                Container(
                  margin:EdgeInsets.only(left:10,top:10,bottom:10,right:10),
                  child:GestureDetector(
                    onTap:(){
                      launch_browser("http://infytechnics.com/");
                    },

                    child:Text(
                    Strings.companyname,
                    style: TextStyle(
                      decoration:TextDecoration.underline,
                      fontSize: 18.0,fontFamily:'fontregular',color:colors.colorPrimary,
                    ),
                  ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}