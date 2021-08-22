import 'package:flutter/material.dart';


class AdvertisementPoster extends StatefulWidget {
  AdvertisementPosterWidget createState() => AdvertisementPosterWidget();
}

class AdvertisementPosterWidget extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        //    Card(
        SingleChildScrollView(
        child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Container(
          child:Image.asset('assets/images/advertisement/adv1.jpg',
          fit:BoxFit.contain),
    ),
          Container(
            child:Image.asset('assets/images/advertisement/adv2.jpg',
                fit:BoxFit.contain),
          ),

          Container(
            child:Image.asset('assets/images/advertisement/adv3.jpg',
                fit:BoxFit.contain),
          ),

          Container(
            child:Image.asset('assets/images/advertisement/adv4.jpg',
                fit:BoxFit.contain),
          ),

          Container(
            child:Image.asset('assets/images/advertisement/adv5.jpg',
                fit:BoxFit.contain),
          ),

          Container(
            child:Image.asset('assets/images/advertisement/adv6.jpg',
                fit:BoxFit.contain),
          ),

          Container(
            child:Image.asset('assets/images/advertisement/adv7.jpg',
                fit:BoxFit.contain),
          ),
        ],
    ),
        ),
    );
  }
}