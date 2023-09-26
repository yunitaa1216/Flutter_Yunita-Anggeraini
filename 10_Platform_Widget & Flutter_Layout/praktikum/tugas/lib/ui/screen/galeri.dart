import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class galeri extends StatelessWidget {
  const galeri({super.key});

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
Text(
  'Tes Font', 
  style: GoogleFonts.redRose(fontSize: 30),
  ),
// Image.asset('assets/logo.png'),
// Image.network('https://picsum.photos/id/237/200/300'),
      ],),
    );
  }
}