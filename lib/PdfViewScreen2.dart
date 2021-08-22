
import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:flutter/services.dart';


class PdfViewScreen2 extends StatefulWidget {
  String pdfPath;

  PdfViewScreen2(String pdfPath) {
    this.pdfPath = pdfPath;
  }
  PdfViewScreen2Widget createState() => PdfViewScreen2Widget(pdfPath);

}

class PdfViewScreen2Widget extends State{
   String pdfPath;

  PdfViewScreen2Widget(String pdfPath)
  {
    this.pdfPath=pdfPath;
  }

  goBackToPreviousScreen(BuildContext context){
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
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
    super.dispose();
  }
}