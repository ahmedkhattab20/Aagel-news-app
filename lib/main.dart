import 'package:flutter/material.dart';
import 'package:news_app/theme.dart';
import 'package:news_app/view/home/home_view.dart';
import 'package:news_app/view/news/news_details.dart';
import 'package:news_app/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme.lightTheme,

      debugShowCheckedModeBanner: false,
      initialRoute:SplashView.routName ,
      routes: {
        SplashView.routName: (context)=>SplashView(),
        HomeView.routName: (context)=>HomeView(),
        NewsDetails.routName:(context)=>NewsDetails(),
      },
    );
  }
}
