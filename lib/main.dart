import 'package:city_tourr/pages/detail_page.dart';
import 'package:city_tourr/pages/giri%C5%9F_ekran%C4%B1.dart';
import 'package:city_tourr/pages/home_page.dart';
import 'package:city_tourr/pages/kayit.dart';
import 'package:city_tourr/pages/log_in.dart';
import 'package:city_tourr/pages/navpages/main_page.dart';
import 'package:city_tourr/pages/navpages/search_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LogIn(),
    );
  }
}
