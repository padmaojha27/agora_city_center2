import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:agora_city_center/SplashScreen.dart';
import 'package:agora_city_center/utilities/colors.dart';
import 'package:firebase_core/firebase_core.dart';



//void main() => runApp(MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: colors.colorPrimary,
        scaffoldBackgroundColor:colors.backgroundcolor
      ),
      home: Scaffold(
        body: Center(
          child: SplashScreen(),
        ),
      ),
    );
  }
}








