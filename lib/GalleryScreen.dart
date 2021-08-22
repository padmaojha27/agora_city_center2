import 'package:flutter/material.dart';
import 'package:agora_city_center/common_widgets/row_card_widget.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:agora_city_center/utilities/colors.dart';


final List<String> galleryImages = [
  'assets/images/gallery/img1.jpg',
  'assets/images/gallery/img2.jpg',
  'assets/images/gallery/img3.jpg',
  'assets/images/gallery/img4.jpg',
  'assets/images/gallery/img5.jpg',
  'assets/images/gallery/img6.jpg',
  'assets/images/gallery/img7.jpg',
  'assets/images/gallery/img8.jpg',
  'assets/images/gallery/img9.jpg',
  'assets/images/gallery/img10.jpg',
  'assets/images/gallery/img11.jpg',
  'assets/images/gallery/img12.jpg',
  'assets/images/gallery/img13.jpg',
  'assets/images/gallery/img14.jpg',
  'assets/images/gallery/img15.jpg',
  'assets/images/gallery/img16.jpg',
  'assets/images/gallery/img17.jpg',
  'assets/images/gallery/img18.jpg',
  'assets/images/gallery/img19.jpg',
  'assets/images/gallery/img20.jpg',
  'assets/images/gallery/img21.jpg'
];

class GalleryScreen extends StatefulWidget {
  GalleryScreenWidget createState() => GalleryScreenWidget();
}

class GalleryScreenWidget extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Gallery"),
      ),
      body:
      //    Card(
      SingleChildScrollView(
        child: Column(
          children: [
            gallery_screen_row('assets/images/gallery/img1.jpg',0),
            gallery_screen_row('assets/images/gallery/img2.jpg',1),
            gallery_screen_row('assets/images/gallery/img3.jpg',2),
            gallery_screen_row('assets/images/gallery/img4.jpg',3),
            gallery_screen_row('assets/images/gallery/img5.jpg',4),
            gallery_screen_row('assets/images/gallery/img6.jpg',5),
            gallery_screen_row('assets/images/gallery/img7.jpg',6),
            gallery_screen_row('assets/images/gallery/img8.jpg',7),
            gallery_screen_row('assets/images/gallery/img9.jpg',8),
            gallery_screen_row('assets/images/gallery/img10.jpg',9),
            gallery_screen_row('assets/images/gallery/img11.jpg',10),
            gallery_screen_row('assets/images/gallery/img12.jpg',11),
            gallery_screen_row('assets/images/gallery/img13.jpg',12),
            gallery_screen_row('assets/images/gallery/img14.jpg',13),
            gallery_screen_row('assets/images/gallery/img15.jpg',14),
            gallery_screen_row('assets/images/gallery/img16.jpg',15),
            gallery_screen_row('assets/images/gallery/img17.jpg',16),
            gallery_screen_row('assets/images/gallery/img18.jpg',17),
            gallery_screen_row('assets/images/gallery/img19.jpg',18),
            gallery_screen_row('assets/images/gallery/img20.jpg',19),
            gallery_screen_row('assets/images/gallery/img21.jpg',20),
          ],
        ),
      ),
    );
  }

  ClipRRect gallery_screen_row(String image,int srno)
  {
    return
      ClipRRect(
        child: Stack(
          children: <Widget>[
            InkWell(
            onTap: () {
              showDialog(context: context,
                  builder: (BuildContext context){
                    return gallerySlider(srno);
                  }
              );
        //      showOverlay(context);
      },
        child:Container(
              margin : EdgeInsets.only(top : 10.0,left : 10.0,right:10.0,bottom:0.0),
              child : Image.asset(image,fit:BoxFit.cover,width:500),
            ),
            ),
          ],
        ),

       );
  }


  Dialog gallerySlider(int pos)
 // Container gallerySlider(int pos)
  {
    return

      Dialog(
        backgroundColor: colors.trans2,
  //child:
  //      Container(
    //      color: colors.trans2,

      //    margin:EdgeInsets.all(0),
          child:PhotoViewGallery.builder(
            itemCount: galleryImages.length,
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: AssetImage(
                  galleryImages[index],
                ),
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 2,
              );

            },
              scrollPhysics: BouncingScrollPhysics(),
            backgroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Theme.of(context).canvasColor,
            ),
            enableRotation: false,
            loadingBuilder: (context, event) => Center(
              child: Container(
                width: 30.0,
                height: 30.0,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.orange,
                  value: event == null
                      ? 0
                      : event.cumulativeBytesLoaded / event.expectedTotalBytes,
                ),
            //  ),
            ),
          ),
    //    ),

      ),
      );
  }


  showOverlay(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(
        builder: (context) => /*Positioned(
          //top: 40.0,
          right: 10.0,
          child: CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: Text("1"),
          ),
        )*/
      Center(
        child:gallerySlider(1),
      ),

    );

// OverlayEntry overlayEntry = OverlayEntry(
//         builder: (context) => Positioned(
//               top: MediaQuery.of(context).size.height / 2.0,
//               width: MediaQuery.of(context).size.width / 2.0,
//               child: CircleAvatar(
//                 radius: 50.0,
//                 backgroundColor: Colors.red,
//                 child: Text("1"),
//               ),
//             ));
    overlayState.insert(overlayEntry);

    //await Future.delayed(Duration(seconds: 2));

    //overlayEntry.remove();
  }
}