import 'package:flutter/material.dart';
// import 'package:kosanMobile/providers/space_provider.dart';
import 'package:tes_project/providers/space_provider.dart';
import 'package:tes_project/theme.dart';
// import 'package:kosanMobile/theme.dart';
import 'package:provider/provider.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}