import 'package:covid_19/provider/home.dart';
import 'package:covid_19/view/home_screen.dart';
import 'package:covid_19/view/second.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (context) => Home_pro(),)
     ], 
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Home_screen(),
        },
      ),
    )
  );
}

