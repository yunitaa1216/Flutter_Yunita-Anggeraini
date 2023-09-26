import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Assets'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Image(
          height: 350,
  image: AssetImage('assets/bg.jpg'),
),
// Text('Tes Font', style: TextStyle(fontSize: 30, fontFamily: 'Rowdies'),),
Text(
  'Tes Font', 
  style: GoogleFonts.fuggles(fontSize: 30),
  ),
// Image(
//   height: 150,
//   image: AssetImage('assets/logo.png'),
// ),
// Image.asset('assets/logo.png'),
// Image.network('https://picsum.photos/id/237/200/300'),
      ],),
    );
  }
}