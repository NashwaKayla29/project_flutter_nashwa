import 'package:flutter/material.dart';
import 'package:myapp/angkasa/about_angkasa.dart';
import 'package:myapp/angkasa/beranda.dart';
import 'package:myapp/angkasa/angkasa_list.dart';
import 'screen/about_screen.dart';
import 'screen/home_screen.dart';
import 'screen/wisata_screen.dart';
import 'angkasa/beranda.dart';
import 'angkasa/about_angkasa.dart';
import 'angkasa/angkasa_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "home": (context) =>  const BerandaLatihan(),
        '/about': (context) => const AboutAngkasa(),
        '/planet': (context) =>  ListAngkasa()
      },
      initialRoute: "home",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: BerandaLatihan(),
      ),
    );
  }
}