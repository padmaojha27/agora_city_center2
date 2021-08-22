import 'package:flutter/material.dart';
import 'package:agora_city_center/TwoBHKScreen.dart';
import 'package:agora_city_center/ThreeBHKScreen.dart';
import 'package:agora_city_center/FourBHKScreen.dart';
import 'package:agora_city_center/FiveBHKScreen.dart';
import 'package:agora_city_center/SixBHKScreen.dart';
import 'package:agora_city_center/ClubMembershipScreen.dart';
import 'package:agora_city_center/BookNowScreen.dart';
import 'package:agora_city_center/utilities/pdf_handler.dart';
import 'package:agora_city_center/PdfViewScreen.dart';
import 'package:agora_city_center/VideoViewScreen.dart';


class gesture_handler{
  openScreen(String screen_name,BuildContext context)
  {
    switch(screen_name) {
      case "Sample House Ready": {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VideoViewScreen()),
        );
      }
      break;
      case "Club Membership": {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ClubMembershipScreen()),
        );
      }
      break;
      case "Book Now": {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookNowScreen()),
        );
      }
      break;

      case "2BHK": {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TwoBHKScreen()),
        );
      }
      break;

      case "3BHK": {   Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ThreeBHKScreen()),
      ); }
      break;

      case "4BHK": {   Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FourBHKScreen()),
      ); }
      break;

      case "5BHK": {   Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FiveBHKScreen()),
      ); }
      break;
      case "6BHK": {   Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SixBHKScreen()),
      ); }
      break;

    }

  }


  openPDFView(BuildContext context,String pdfFileName,String or)
  {
    pdf_handler().preparePdf(context,pdfFileName).then((path) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PdfViewScreen(path,or)),
      );
    });
  }


}
