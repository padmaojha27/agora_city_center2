import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';


class pdf_handler{

Future<String> preparePdf(BuildContext context,String _documentPath) async {
  final ByteData bytes =
  await DefaultAssetBundle.of(context).load(_documentPath);
  final Uint8List list = bytes.buffer.asUint8List();
  final tempDir = await getTemporaryDirectory();
  final tempDocumentPath = '${tempDir.path}/$_documentPath';
  final file = await File(tempDocumentPath).create(recursive: true);
  file.writeAsBytesSync(list);
  return tempDocumentPath;
}
}
