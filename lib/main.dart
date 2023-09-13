import 'package:flutter/material.dart';
import 'package:ott/bottomnavi.dart';
import 'package:ott/download.dart';
import 'package:ott/edit.dart';
import 'package:ott/episode.dart';
import 'package:ott/homepage.dart';
import 'package:ott/more.dart';
import 'package:ott/play.dart';
import 'package:ott/profile.dart';
import 'package:ott/search.dart';
import 'package:ott/splashscren.dart';
import 'package:ott/video.dart';


import 'login page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),


      home:SplashScreen(),
    );
  }
}
