import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:agora_city_center/common_widgets/row_card_widget.dart';
import 'package:agora_city_center/utilities/gesture_handler.dart';
import 'package:agora_city_center/utilities/colors.dart';

final List<String> hotelimagesList = [
  'assets/images/hotel/hotel1.jpg',
  'assets/images/hotel/hotel2.jpg',
  'assets/images/hotel/hotel3.jpg',

];

class FiveStarHotel extends StatefulWidget {
  FiveStarHotelWidget createState() => FiveStarHotelWidget();
}

class FiveStarHotelWidget extends State {
  int currentPos = 0;
  String text,subject;

  goBackToPreviousScreen(BuildContext context){
    Navigator.pop(context);
  }

  _launch(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Not supported");
    }
  }

    _onShareData(BuildContext context) async {

    final RenderBox box = context.findRenderObject();
    {
      await Share.share(text,
          subject: subject,
          sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("5 Star Hotel"),
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
                  text='Hello.This is Share Text';
                  subject='This is Share Subject';
                  _onShareData(context);
                },
                child: Icon(
                  Icons.share,
                  size: 26.0,

                ),
              )
          ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.more_vert,
                  size: 26.0,
                ),
              )
          ),
        ],
      ),
      body:
      //    Card(
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

              items: hotelimagesList
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
              children: hotelimagesList.map((urlOfItem) {
                int index = hotelimagesList.indexOf(urlOfItem);
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
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.only(top: 2, bottom: 2, left: 5,right:5.0),
              decoration: BoxDecoration(
                color: colors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child:IntrinsicHeight(
              child:Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
               Container(
                 padding: EdgeInsets.all(5.0),
                child : Text("26068.2 Sq.Mt.",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
                  const VerticalDivider(
                    color: Colors.white,
                    thickness: 2,
                    indent: 2,
                    endIndent: 2,
                    width: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),

                    child : Text("162 \nTotal Hotel Rooms",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),

],),
              ),
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          Expanded(
            flex:1,
            child:Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top : 5.0),
              child:   Text("BANQUET",
                style: TextStyle(color: colors.colorPrimaryDark, fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'bebasneue'),
                textAlign: TextAlign.center,
              ),
                  ),
                      Container(
                        //padding: EdgeInsets.only(top : 10.0),
                        child:   Text("1",
                          style: TextStyle(color: colors.black, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),

                      ),
            ],
            ),
          ),
          Expanded(
            flex:1,
                  child:Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top : 10.0),
                          child:   Text("RESTAURANT",
                            style: TextStyle(color:colors.colorPrimaryDark, fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'bebasneue'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          //padding: EdgeInsets.only(top : 10.0),
                          child:   Text("1",
                            style: TextStyle(color: colors.black, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]
                  )
          ),
          ]
          ),

            Row(
                children: <Widget>[
            Expanded(
              flex:1,
                  child:Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top : 10.0),
                        child:   Text("TERRACE CAFE",
                          style: TextStyle(color:colors.colorPrimaryDark, fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'bebasneue'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                      //  padding: EdgeInsets.only(top : 10.0),
                        child:   Text("1",
                          style: TextStyle(color: colors.black, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
            ),
              Expanded(
                flex:1,
                  child:
                  Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top : 10.0),
                          child:   Text("CONFERENCE ROOM",
                            style: TextStyle(color:colors.colorPrimaryDark, fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'bebasneue'),
                            textAlign: TextAlign.center,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(top : 10.0),
                          child:   Text("1",
                            style: TextStyle(color: colors.black, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),

                        ),
                      ]
                  ),
                  ),
                    ],
            ),



            Row(
              children: <Widget>[

                  GestureDetector(
                    onTap:(){
                      gesture_handler().openPDFView(context, 'assets/plans/hotelub.pdf',"l");
                    },
                  child:Card(
                    margin:EdgeInsets.only(top:10,left:5,right:5,bottom:10),
                    child:
                    Padding(
                      padding:EdgeInsets.only(top:5,left:5,right:0,bottom:5),
                      child:
                          IntrinsicHeight(
                      child:Row(
                        children: <Widget>[
                          Image.asset('assets/images/app_icons/car.png',
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
                                //text: 'Default',
                                style: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.bold),
                                /*defining default style is optional */

                                children: <TextSpan>[
                                  TextSpan(
                                      text: ' Upper\n', style: TextStyle(color:colors.sbglogoorange,fontFamily: 'cambria')),
                                  TextSpan(
                                      text: 'Basement ',
                                      style: TextStyle(color: colors.colorPrimaryDark,fontFamily: 'cambria')),
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

                Expanded(
                  flex:1,
                  child :GestureDetector(
                    onTap:(){
                      gesture_handler().openPDFView(context, 'assets/plans/hotellb.pdf',"l");
                    },
                  child: Card(
                    margin:EdgeInsets.only(top:10,left:2,right:5,bottom:10),
                    child:
                    Padding(
                      padding:EdgeInsets.only(top:5,left:5,right:5,bottom:5),
                      child:IntrinsicHeight(
                      child: Row(
                        children: <Widget>[
                          Image.asset('assets/images/app_icons/park.png',
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
                                //text: 'Default',
                                style: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.bold),
                                /*defining default style is optional */

                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Lower\n', style: TextStyle(color:colors.sbglogoorange,fontFamily: 'cambria')),
                                  TextSpan(
                                      text: 'Basement',
                                      style: TextStyle(color: colors.colorPrimaryDark,fontFamily:'cambria')),
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
              ],
            ),
            //ClipRRect(

            //  child:
            Container(
              alignment: Alignment.centerLeft,
              color:colors.colorPrimaryDark,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("3rd Floor",
                style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),

            ),
     /* GestureDetector(
        onTap: (){
          gesture_handler().openPDFView(context,'assets/plans/clubhouse.pdf',"l");
        },

        child:
     */      // row_card_widget().child_row('assets/images/app_icons/club.png'," Club House"," 2,10,000 Sq.Ft. Total Area"," 1,00,000 Sq.Ft. Under Cover &"," 1,10,000 Sq.Ft. Open To Sky","42+ Amenities","y",'assets/plans/clubhouse.pdf',context),
            row_card_widget().club_row(context,'assets/plans/clubhouse.pdf','assets/images/app_icons/club.png'," Club House"," 2,10,000 Sq.Ft. Total Area"," 1,00,000 Sq.Ft. Under Cover &"," 1,10,000 Sq.Ft. Open To Sky","With A To Z Facilities","42+ Amenities"),

      //),
        Container(
              alignment: Alignment.centerLeft,
              color:colors.colorPrimaryDark,
              margin: EdgeInsets.only(top : 10.0,left : 0.0),
              padding: EdgeInsets.all(8.0),
              child:   Text("4th Floor To 15th Floor",
                style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),

            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"4\u1d57\u02b0 Floor"," Floor Plan"," 15329 Sq.Ft.","",'assets/plans/hotel4floor.pdf',context),
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"5\u1d57\u02b0 Floor"," Floor Plan","","",'assets/plans/hotel5floor.pdf',context),
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"6\u1d57\u02b0 Floor"," Floor Plan","","",'assets/plans/hotel6floor.pdf',context),
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"7\u1d57\u02b0 Floor"," Floor Plan","","",'assets/plans/hotel7floor.pdf',context),
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"8\u1d57\u02b0 Floor"," Floor Plan","","",'assets/plans/hotel8floor.pdf',context),
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"9\u1d57\u02b0 Floor"," Floor Plan","","",'assets/plans/hotel9floor.pdf',context),
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"10\u1d57\u02b0 Floor"," Floor Plan","","",'assets/plans/hotel10floor.pdf',context),
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"11\u1d57\u02b0 Floor"," Floor Plan","","",'assets/plans/hotel11floor.pdf',context),
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"12\u1d57\u02b0 Floor"," Floor Plan","","",'assets/plans/hotel12floor.pdf',context),
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"13\u1d57\u02b0 Floor"," Floor Plan","","",'assets/plans/hotel13floor.pdf',context),
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"14\u1d57\u02b0 Floor"," Floor Plan","","",'assets/plans/hotel14floor.pdf',context),
            row_card_widget().child_row_res('assets/images/app_icons/floorplan.png',"15\u1d57\u02b0 Floor"," Floor Plan","","",'assets/plans/hotel5floor.pdf',context),


          ],
        ),
      ),
      //    ),

    );
  }
}
