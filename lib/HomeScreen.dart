import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:agora_city_center/utilities/app_strings.dart';
import 'package:agora_city_center/utilities/app_constants.dart';
import 'package:flutter_boom_menu/flutter_boom_menu.dart';
import 'package:agora_city_center/common_widgets/row_card_widget.dart';
import 'package:agora_city_center/common_widgets/youtube_widget.dart';
import 'package:agora_city_center/OfficesScreen.dart';
import 'package:agora_city_center/RetailShowroomScreen.dart';
import 'package:agora_city_center/FiveStarHotel.dart';
import 'package:agora_city_center/AdvertisementPoster.dart';
import 'package:agora_city_center/awardsScreen.dart';
import 'package:agora_city_center/ThreeSixtyViewScreen.dart';
import 'package:agora_city_center/YouTubeVideosScreen.dart';
import 'package:agora_city_center/ProjectDetailsScreen.dart';
import 'package:agora_city_center/ConstructionUpdateScreen.dart';
import 'package:agora_city_center/ContactUsScreen.dart';
import 'package:agora_city_center/GalleryScreen.dart';
import 'package:agora_city_center/PdfViewScreen.dart';
import 'package:flutter/services.dart';
import 'package:agora_city_center/utilities/gesture_handler.dart';
import 'package:agora_city_center/utilities/pdf_handler.dart';
import 'package:agora_city_center/utilities/colors.dart';



final List<String> imagesList = [
  'assets/images/banner_images/e1.jpg',
  'assets/images/banner_images/e2.jpg',
  'assets/images/banner_images/e3.jpg',
  'assets/images/banner_images/e4.jpg',
  'assets/images/banner_images/e5.jpg',
  'assets/images/banner_images/e6.jpg',
  'assets/images/banner_images/e7.jpg'
];



BoomMenu buildBoomMenu(BuildContext context) {

  return BoomMenu(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0),
      //  child: Icon(Icons.add),
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      scrollVisible: true,
      overlayColor: Colors.black,
      overlayOpacity: 0.7,
      children: [
        MenuItem(
//          child: Icon(Icons.accessibility, color: Colors.black, size: 40,),
          child: Image.asset('assets/images/app_icons/threesixty.png'),
          title: "360 Degree",
          titleColor:Colors.white,
          subtitle: "",
          subTitleColor: Colors.grey[850],
          backgroundColor: Colors.yellow[800],
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThreeSixtyViewScreen()),
            );},
        ),
        MenuItem(
            child: Image.asset('assets/images/app_icons/youtube.png'),
            title: "YouTube Videos",
            titleColor: Colors.white,
            subtitle: "",
            subTitleColor: Colors.grey[850],
            backgroundColor: Colors.blue[500],
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => YouTubeVideosScreen()),
              ); }
        ),
        MenuItem(

            child: Image.asset('assets/images/app_icons/highlighter.png'),
            title: "Highlights",
            titleColor: Colors.white,
            subtitle: "",
            subTitleColor: Colors.grey[850],
            backgroundColor: Colors.green[600],
            onTap: (){
              pdf_handler().preparePdf(context,'assets/plans/highlights.pdf').then((path) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PdfViewScreen(path,"l")),
                );
              });
            }
        ),
        MenuItem(
            child: Image.asset('assets/images/app_icons/projectdetail.png'),
            title: "Project Details",
            titleColor: Colors.white,
            subtitle: "",
            subTitleColor: Colors.grey[850],
            backgroundColor: Colors.purple[500],
            onTap: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProjectDetailsScreen()),
              ); }
        ),
        MenuItem(
            child: Image.asset('assets/images/app_icons/award.png'),
            title: "Awards",
            titleColor: Colors.white,
            subtitle: "",
            subTitleColor: Colors.grey[850],
            backgroundColor: Colors.green[500],
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => awardsScreen()),
              ); }
        ),
        MenuItem(
            child: Image.asset('assets/images/app_icons/architect.png'),
            title: "Architect AKA",
            titleColor: Colors.white,
            subtitle: "",
            subTitleColor: Colors.grey[850],
            backgroundColor: Colors.blue[900],
            onTap: () {
              pdf_handler().preparePdf(context, 'assets/plans/architect.pdf').then((path) {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PdfViewScreen(path,"l")),
                );
              });
            }
        ),
        MenuItem(
            child: Image.asset('assets/images/app_icons/contactus64.png'),
            title: "Contact Us",
            titleColor: Colors.white,
            subtitle: "",
            subTitleColor: Colors.grey[850],
            backgroundColor:  Colors.yellow[800],
            onTap: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUsScreen()),
              ); }
        ),
        MenuItem(
            child: Image.asset('assets/images/app_icons/gallery64.png'),
            title: "Gallery",
            titleColor: Colors.white,
            subtitle: "",
            subTitleColor: Colors.grey[850],
            backgroundColor:Colors.green[600],
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GalleryScreen()),
              ); }
        ),
        MenuItem(
            child: Image.asset('assets/images/app_icons/brick.png'),
            title: "Construction Updates",
            titleColor: Colors.white,
            subtitle: "",
            subTitleColor: Colors.grey[850],
            backgroundColor:Colors.blue[900],
            onTap: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConstructionUpdateScreen()),
              ); }
        ),

      ]
  );
}


class HomeScreen extends StatefulWidget {
  HomeScreenWidget createState() => HomeScreenWidget();

  HomeScreen({Key key}) :super(key: key);

}

class HomeScreenWidget extends State {
  final keyIsFirstLoaded = 'is_first_loaded';

  int currentPos = 0;
  String text,subject;

  showDialogIfFirstLoaded(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstLoaded = prefs.getBool(keyIsFirstLoaded);
    if (isFirstLoaded == null) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Title"),
            content: new Text("This is one time dialog"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Dismiss"),
                onPressed: () {
                  // Close the dialog
                  Navigator.of(context).pop();
                  prefs.setBool(keyIsFirstLoaded, false);
                },
              ),
            ],
          );
        },
      );
    }
  }





  Dialog disclaimerDialog()
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
    Container(
      margin: EdgeInsets.only(top : 10.0,left:10.0,bottom:10.0,right:10.0),
      child:RaisedButton(
        // onPressed: getValues,
          color: Colors.blue[900],
          textColor: Colors.white,

          child: Text('ACCEPT'),
          onPressed: () {
            Navigator.pop(context);

          }),
    ),


  ],
  ),
        ),
    );
  }


   showDialogFirst(BuildContext context) async
  {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstLoaded = prefs.getBool(keyIsFirstLoaded);
    if (isFirstLoaded == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
              child:
              Container(

                margin: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 0.0, bottom: 0.0),

                      child: Image.asset(
                        'assets/images/advertisement/adv1.jpg',
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          flex: 1,
                          child:
                          Container(
                            margin: EdgeInsets.all(2),

                            child: RaisedButton(
                              // onPressed: getValues,
                                color: colors.sbglogoorange,
                                textColor: Colors.white,

                                child: Text('SKIP'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  prefs.setBool(keyIsFirstLoaded, false);

                                }),
                          ),
                        ),
                        Expanded(
                          flex: 1,

                          child: Container(
                            margin: EdgeInsets.all(2),

                            child: RaisedButton(
                              // onPressed: getValues,
                                color: colors.sbglogoorange,
                                textColor: Colors.white,

                                child: Text('VIEW MORE'),
                                onPressed: () {
                                  Navigator.pop(context);

                                  openAdvertisementPosterScreen();
                                  prefs.setBool(keyIsFirstLoaded, false);

                                }),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            );
          });
    }
  }



  Widget popupMenuMore() {
    return PopupMenuButton(
        padding: EdgeInsets.only(right: 20.0),

        onSelected: (value) {
         /* Fluttertoast.showToast(
              msg: "You have selected " + value.toString(),
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 16.0
          );*/
          if(value==1)
            {
              showDialog(context: context,
                  builder: (BuildContext context){

                return disclaimerDialog();
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


  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          TextButton(
            onPressed: () =>   SystemNavigator.pop(),//Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }


 /* goBackToPreviousScreen(BuildContext context){
    Navigator.pop(context);
  }
*/
  _launch(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Not supported");
    }
  }



  void openFiveStarHotelScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FiveStarHotel()),
    );
  }
  @override
  void initState() {
    super.initState();
    getStringValuesSF();
  }
  void openAdvertisementPosterScreen() {
  /*  Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AdvertisementPoster()),
    );*/
    gesture_handler().openPDFView(context, 'assets/plans/adv.pdf',"p");
  }
  getStringValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    constants.phoneno = prefs.getString('phoneno');

  }


  void officesScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OfficeScreen()),
    );
  }

  void retailScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RetailShowroomScreen()),
    );
  }

  _onShareData(BuildContext context) async {

    final RenderBox box = context.findRenderObject();
    {
      await Share.share(text,
          subject: subject,
          sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    }
  }

  /*GlobalKey<CircularMenuState> key = GlobalKey<CircularMenuState>();
  CircularMenu buildCirciularMenu(){
    return
      CircularMenu(
        alignment: Alignment.bottomRight,
        *//* backgroundWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

        ],
      ),*//*
        curve: Curves.bounceOut,
        reverseCurve: Curves.bounceInOut,
        toggleButtonColor: Colors.cyan[400],
        items: [
          CircularMenuItem(
              icon: Icons.home,
              color: Colors.brown,
              onTap: () {
                *//*setState(() {
                _color = Colors.brown;
                _colorName = 'Brown';
              });*//*
              }),
          CircularMenuItem(
              icon: Icons.search,
              color: Colors.green,
              onTap: () {
                *//*setState(() {
                _color = Colors.green;
                _colorName = 'Green';
              });*//*
              }),
          CircularMenuItem(
              icon: Icons.settings,
              color: Colors.red,
              onTap: () {
                *//*setState(() {
                _color = Colors.red;
                _colorName = 'red';
              });*//*
              }),
          CircularMenuItem(
              icon: Icons.chat,
              color: Colors.orange,
              onTap: () {
                *//*setState(() {
                _color = Colors.orange;
                _colorName = 'orange';
              });
*//*
              }),
          CircularMenuItem(
              icon: Icons.notifications,
              color: Colors.purple,
              onTap: () {
                *//*  setState(() {
                _color = Colors.purple;
                _colorName = 'purple';
              });*//*
              })
        ],
      );
  }
*/

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showDialogFirst(context));

    // if(MediaQuery.of(context).orientation == Orientation.landscape) {
     /* SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);*/
    //};


    return
      new WillPopScope(
        onWillPop: _onWillPop,
      child:Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Agora City Centre"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  //_callNumber("9974490632");
                  _launch("tel:08690433433");
                },
                child: Icon(
                  Icons.call,
                  size: 26.0,
                ),
              )
          ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  text=Strings.sharecontent;
                  subject=Strings.sharetitle;
                  _onShareData(context);
                },
                child: Icon(
                  Icons.share,
                  size: 26.0,

                ),
              )
          ),
         /* Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {                myPopMenu();
                },
                child: Icon(
                  Icons.more_vert,
                  size: 26.0,
                ),
              )
          ),*/
          popupMenuMore(),
        ],
      ),
      body:
      SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 170.0,
                enlargeCenterPage: false,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPos = index;
                  });
                },
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.linear,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 1000),
                viewportFraction: 0.95,
              ),

              items: imagesList
                  .map(
                    (item) =>
                    Container(
                      margin: EdgeInsets.only(left: 5, top:20, right: 5, bottom:6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: new AssetImage(item),
                          fit: BoxFit.cover,
                        ),

                        //),
                      ),
                    ),
              )
                  .toList(),
              //Slider Container properties

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imagesList.map((urlOfItem) {
                int index = imagesList.indexOf(urlOfItem);
                return Container(
                  //padding: const EdgeInsets.all(15.0),
                  width: 5.0,
                  height: 5.0,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPos == index
                    /*? Color.fromRGBO(0, 0, 0, 0.8)
                      : Color.fromRGBO(0, 0, 0, 0.3),
                  */
                        ? Colors.red
                        : Colors.grey,
                  ),
                );
              }).toList(),
            ),
            Container(
              width: 350,
              padding: EdgeInsets.only(top : 10.0),
              child:   Text(Strings.reraPhase1,
                style: TextStyle(color: Colors.black, fontSize: 10,fontWeight: FontWeight.bold,fontFamily: 'roboto_regular'),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 0.0, right: 0.0),
                child: Divider(
                  color: Colors.grey,
                  height: 0,
                )),
            row_card_widget().row_type4("Club \n Membership","BOOK NOW","Sample House \n Ready",context,true,true,true,false,false,false),
            Container(
              color:colors.lightgray,
             child: Row(
              children: <Widget>[
                Expanded(
                  flex:1,
                  child:Material(
                  child: InkWell(
                    onTap:openFiveStarHotelScreen,
                    child: Card(
                      margin:EdgeInsets.only(top:10,left:5,right:2,bottom:10),
                      child:
                      Padding(
                        padding:EdgeInsets.only(top:5,left:2,right:2,bottom:5),
                        child:
                        IntrinsicHeight(
                        child:Row(
                          children: <Widget>[
                            Image.asset('assets/images/app_icons/hotel.png',
                            ),
                            VerticalDivider(
                              color:colors.lightGrey,
                              thickness: 1,
                              indent: 2,
                              endIndent: 2,
                              width: 10,
                            ),

                            SizedBox(
                              width:70,
                              child:RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(

                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' 5 Star', style: TextStyle(color:colors.colorPrimaryDark,fontWeight: FontWeight.bold,fontSize:20,fontFamily:'cambria')),
                                    TextSpan(
                                        text: ' Hotel',
                                        style: TextStyle(color: colors.sbglogoorange,fontSize:18,fontFamily:'cambria',fontWeight:FontWeight.bold)),
                                  ],
                                ),
                             ),
                           ),
                          ],
                        ),
                        ),
                        ),
                    ),
                  ),
                  ),
                ),


                Expanded(
                  flex:1,
                  child:Material(
                  child:   InkWell(
                    onTap:openAdvertisementPosterScreen,
                    child: Card(
                      margin:EdgeInsets.only(top:10,left:2,right:5,bottom:10),
                      child:
                      Padding(
                        padding:EdgeInsets.only(top:5,left:2,right:2,bottom:5),
                        child:
                        IntrinsicHeight(
                        child:Row(
                          children: <Widget>[
                            Image.asset('assets/images/app_icons/poster.png',
                            ),
                            VerticalDivider(
                              color:colors.lightGrey,
                              thickness: 1,
                              indent: 2,
                              endIndent: 2,
                              width: 10,
                            ),

                            SizedBox(
                              width:90,
                              child:RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(

                                  children: <TextSpan>[
                                    TextSpan(
                                        text: ' Advertise', style: TextStyle(color:colors.colorPrimaryDark,fontWeight:FontWeight.bold,fontSize:20,fontFamily:'cambria')),
                                    TextSpan(
                                        text: ' Posters',
                                        style: TextStyle(color:colors.sbglogoorange,fontWeight:FontWeight.bold,fontSize:18,fontFamily:'cambria')),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        ),
                      ),
                    ),
                  ),
                  ),
                ),
              ],
            ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              alignment: Alignment.centerLeft,
              padding:EdgeInsets.all(5.0),
              margin: EdgeInsets.only(top : 0.0,left : 10.0),
              child:   Text("COMMERCIAL",
                style: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold,fontFamily:'serif'),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              color:colors.lightgray,
              child: Column(
                children: <Widget>[
                      ClipRRect(
              child: Stack(
                children: <Widget>[

                  Container(

                    margin : EdgeInsets.only(top : 10.0,left : 10.0,right:10.0,bottom:5.0),
                     //Positioned.fill(
                    child:GestureDetector(

                      onTap:(){officesScreen();},
                              child : Image.asset('assets/images/app_icons/shop.jpg',fit:BoxFit.cover,width:500),
                    ),
                    ),

            Positioned(
                    bottom: 15,
                    left: 20,
                    child:
                    Container(
                      alignment:Alignment.bottomLeft,
                      child: Text(
                        'Corporate Offices - 196',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
                   ),

            ClipRRect(
              child: Stack(
                children: <Widget>[
                                Container(
                      margin : EdgeInsets.only(top : 10.0,left : 10.0,right:10.0,bottom:5.0),
              child:GestureDetector(

                  onTap:(){retailScreen();},


                  child : Image.asset('assets/images/app_icons/office.jpg',fit:BoxFit.cover,width:500),
                    ),
                  ),


                  Positioned(
                    bottom: 15,
                    left: 20,
                    child:
                    Container(
                      alignment:Alignment.bottomLeft,
                      child: Text(
                        'Retails / Showroom - 1200+',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            ],
              ),
            ),
            /*Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top : 10.0,left : 10.0),

              child:   Text("RESIDENTIAL",
                style: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold,fontFamily:'serif'),
                textAlign: TextAlign.left,
              ),

            ),*/
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(5.0),
              child:   Text("RESIDENTIAL",
                style: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold,fontFamily:'serif'),
                textAlign: TextAlign.left,
              ),

            ),
            //ClipRRect(

            //  child:
            Container(
              color:colors.lightgray,
              child: Column(
                children: <Widget>[
            row_card_widget().child_row1(context,"2BHK",'assets/images/app_icons/home5.png', "2 BHK", "1608.81 Sq Ft. Carpet Area", "Booking Open", "Rs 6500/- Per Sq. Ft.", "FLAT"),
            row_card_widget().child_row1(context,"3BHK",'assets/images/app_icons/home2.png', "3 BHK", "1916.96 Sq. Ft.- 2937.08 Sq. Ft. Carpet Area", "Booking Open", "Rs 6500/- Per Sq. Ft.", "FLAT"),
            row_card_widget().child_row1(context,"4BHK",'assets/images/app_icons/house.png', "4 BHK", "2236.58 Sq. Ft.- 3482.08 Sq. Ft. Carpet Area", "Booking Open", "Rs 6500/- Per Sq. Ft.", "FLAT"),
            row_card_widget().child_row1(context,"5BHK",'assets/images/app_icons/villa1.png', "5 BHK", "2545.45 Sq. Ft.- 3775.04 Sq. Ft. Carpet Area", "Booking Open", "Rs 7500/- Per Sq. Ft.", "VILLA"),
            row_card_widget().child_row1(context,"6BHK",'assets/images/app_icons/villa2.png', "6 BHK", "2746 Sq. Ft.- 3508.17 Sq. Ft. Carpet Area", "Booking Open", "Rs 7500/- Per Sq. Ft.", "VILLA"),
              ],
              ),
              ),

            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(5.0),
              child:   Text("SHREE BALAJI GROUP",
                style: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold,fontFamily:'serif'),
                textAlign: TextAlign.left,
              ),
            ),

            youtube_widget().get_youtube_widget(constants.homeScreenVideoId),
            Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    padding: EdgeInsets.only(top:10.0,left:10.0,right:10.0,bottom:10.0),
                    child : Image.asset('assets/images/app_icons/sbgfinal.png', alignment:Alignment.center),
                  ),

                  Container(
                    margin: EdgeInsets.only(top : 0.0,left : 10.0,bottom:10.0),
                    child:   Text("Corporate Video",
                      style: TextStyle(color: colors.gray_text, fontSize: 14,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]
            ),
          ],
        ),
      ),

      floatingActionButton: buildBoomMenu(context),
      ),
    );
  }
}
