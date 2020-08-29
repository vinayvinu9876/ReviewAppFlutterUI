import 'package:flutter/material.dart';

import 'package:ReviewAppAlphahood/Dashboard/index.dart';
import 'package:ReviewAppAlphahood/ProfileView/index.dart';
import 'package:ReviewAppAlphahood/ProfileInsights/index.dart';
import 'package:ReviewAppAlphahood/IndexPage/index.dart';
import 'package:ReviewAppAlphahood/DBProfile/DBProfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => IndexPage(),
        "/dashboard": (context) => DashboardIndex(),
        '/profileView': (context) => ProfileView(),
        '/profileInsights': (context) => ProfileInsights(),
        '/dbProfile': (context) => DBProfile(),
      },
    );
  }
}
