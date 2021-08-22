/*

import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:flutter/services.dart';


class PdfViewScreen extends StatelessWidget {
 final String pdfPath;


  PdfViewScreen(this.pdfPath);

  @override
  Widget build(BuildContext context) {
    goBackToPreviousScreen(BuildContext context){
      Navigator.pop(context);
    }

    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    return PDFViewerScaffold(
        path: pdfPath);
  }
 @override
 dispose(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
   DeviceOrientation.portraitDown,
  ]);
  //super.dispose();
 }
}*/


import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:flutter/services.dart';


class PdfViewScreen extends StatefulWidget {
  String pdfPath,or;

  PdfViewScreen(String pdfPath,String or) {
    this.pdfPath = pdfPath;
    this.or=or;
  }
  PdfViewScreenWidget createState() => PdfViewScreenWidget(pdfPath,or);

}

class PdfViewScreenWidget extends State{
  String pdfPath,or;

  PdfViewScreenWidget(String pdfPath,String or)
  {
    this.pdfPath=pdfPath;
    this.or=or;
  }

  goBackToPreviousScreen(BuildContext context){
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
        path: pdfPath);
  }
  @override
  initState() {
    super.initState();

  if(or=="l")
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
    SystemChrome.setEnabledSystemUIOverlays([]);
  }
  @override
  dispose(){
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  if(or=="l") {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
    super.dispose();
  }
}