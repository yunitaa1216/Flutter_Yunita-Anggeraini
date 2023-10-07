import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import the Provider package
import 'contact.dart';
import 'galeri.dart';
import 'home_page.dart';

// import 'ui/screen/galeri.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Contact())
      ],
      child: MyApp(),
      )
    // ChangeNotifierProvider(
    //   create: (context) => AppState(), // Create an instance of your AppState
    //   child: const MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/galeri': (context) => GaleriPage(),
        '/contact': (context) => ContactPage(),
      },
    );
  }
}