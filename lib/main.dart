// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_sesi5/home_page.dart';
// import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kucing',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Type of Cats"),
        ),
        body: HomePage(),
      ),
    );
  }
}
  // MainApp({super.key}) {
  //   biodata['name'] = 'Amel';
  //   biodata['email'] = 'ameldaazzuhra@gmail.com';
  //   biodata['phone'] = '+628122914156';
  //   biodata['image'] = '';
  //   biodata['hobby'] = 'Menonton K-Drama';
  //   biodata['address'] = 'Gading Tutuka 1';
  //   biodata['desc'] = ''' hallo ini saya Amel ''';
  // }
