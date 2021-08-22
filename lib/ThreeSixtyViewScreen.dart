import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/row_card_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:agora_city_center/utilities/app_strings.dart';

class ThreeSixtyViewScreen extends StatefulWidget {
  ThreeSixtyViewScreenWidget createState() => ThreeSixtyViewScreenWidget();
}

class ThreeSixtyViewScreenWidget extends State {
  static  String url;// = "https://firebasestorage.googleapis.com/v0/b/agoracitycenter-c5b92.appspot.com/o/Agora%20City%20Centre%20Brochure.pdf?alt=media&token=a32218d3-d51a-43df-9a87-500089d6f3bc";
  launch_browser(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("Not supported");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("360 Degree View"),
    ),

        body:
        //    Card(
        SingleChildScrollView(
        child: Column(
    children: [
      GestureDetector(
        onTap:(){
          launch_browser("https://www.shreebalajiconstruction.com/shree_balaji_agora_city_centre/virtual-tour/2bhk/balaji2bhk.html");
        },
     child: row_card_widget().virtual_tour_row('assets/images/virtual_tour/vt2bhk.jpg'),
      ),
      row_card_widget().virtual_tour_text_row(Strings.virtual2bhk),

      GestureDetector(
        onTap:(){
          launch_browser("https://www.shreebalajiconstruction.com/shree_balaji_agora_city_centre/virtual-tour/3bhk/balaji3bhk.html");
        },
        child:
        row_card_widget().virtual_tour_row('assets/images/virtual_tour/vt3bhk.jpg'),
      ),
        row_card_widget().virtual_tour_text_row(Strings.virtual3bhk),
      GestureDetector(
        onTap:(){
          launch_browser("https://www.shreebalajiconstruction.com/shree_balaji_agora_city_centre/virtual-tour/4bhk/balaji4bhk.html");
        },
        child:

        row_card_widget().virtual_tour_row('assets/images/virtual_tour/vt4bhk.jpg'),
      ),
      row_card_widget().virtual_tour_text_row(Strings.virtual4bhk),
      GestureDetector(
        onTap:(){
          launch_browser("https://www.shreebalajiconstruction.com/shree-balaji-agora-city-centre-vadodara-360");
        },
        child:

        row_card_widget().virtual_tour_row('assets/images/virtual_tour/vtfloorwise.jpg'),
      ),
      row_card_widget().virtual_tour_text_row(Strings.floorthreesixty),
    ],
    ),
        ),
    );
  }

  }