import 'package:flutter/material.dart';

import 'view/contact_page.dart';
// import 'ui/screen/galeri.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Assets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // fontFamily: 'Rowdies',
      ),
      home: ContactPage(),
    );
  }
}