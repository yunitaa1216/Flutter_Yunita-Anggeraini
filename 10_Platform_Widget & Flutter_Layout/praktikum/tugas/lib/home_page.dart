// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Assets'),
//         centerTitle: true,
//       ),
//       body: ListView(children: [
//         Image(
//           height: 350,
//   image: AssetImage('assets/bg.jpg'),
// ),
// // Text('Tes Font', style: TextStyle(fontSize: 30, fontFamily: 'Rowdies'),),
// Text(
//   'Tes Font', 
//   style: GoogleFonts.fuggles(fontSize: 30),
//   ),
// Image(
//   height: 150,
//   image: AssetImage('assets/logo.png'),
// ),
// Image.asset('assets/logo.png'),
// Image.network('https://picsum.photos/id/237/200/300'),
//       ],),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 125, 29, 29),
          title: Row(
            children: [
              Image.asset('assets/kos.png', height: 40,),
              Text('KosApp',
              style: GoogleFonts.croissantOne(fontSize: 30),
              ),
            ],
          // c: Text('KosApp',
          // style: GoogleFonts.croissantOne(fontSize: 30),
          // // style: TextStyle(
          // //   color: Colors.black,
          // // ),
          // ),
          ),
        ),
        body: SingleChildScrollView(
        child: Column(
          children: [ 
            Row(children: [
              SizedBox(height: 50),
      Icon(
      Icons.feedback_outlined,
      size: 38.0,
      color: Color(0xFF010003),
    ),
    SizedBox(height: 4.0),
    Text(
      'Provide Feedback',
      style: GoogleFonts.merriweather(fontSize: 22, fontWeight: FontWeight.bold),
      // style: TextStyle(
      //   fontSize: 32.0,
      //   fontWeight: FontWeight.bold,
      //   color: Color(0xFF010003),
      // ),
    ),
            ],
          ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Text(
        'To help us improve the Kos Mobile app, please provide your feedback. We value your input and appreciate your time. Whether you have suggestions, encountered issues, or want to share your thoughts, we are here to listen and make your experience better!',
        style: GoogleFonts.roboto(fontSize: 14),
        textAlign: TextAlign.center,
      ),
    ),
            SizedBox(height: 16.0),
Column(
  children: [
  Row(
    children: [
      Expanded(
        child: Container(
  //         width: 200.0, // Menyusutkan lebar Container
  // height: 100.0,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 0, 0, 0), // Warna garis tepi
              width: 2.0, // Lebar garis tepi
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'First Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your first name',
                  border: InputBorder.none, // Hapus garis tepi bawaan TextField
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(width: 16.0),
      Expanded(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromARGB(255, 0, 0, 0), // Warna garis tepi
              width: 2.0, // Lebar garis tepi
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Last Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.0),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your last name',
                  border: InputBorder.none, // Hapus garis tepi bawaan TextField
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
  SizedBox(height: 16.0),
  Container(
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      border: Border.all(
        color: Color.fromARGB(255, 0, 0, 0), // Warna garis tepi
        width: 2.0, // Lebar garis tepi
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.0),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your email',
            border: InputBorder.none, // Hapus garis tepi bawaan TextField
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    ),
  ),
  SizedBox(height: 16.0),
  Container(
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      border: Border.all(
        color: Color.fromARGB(255, 0, 0, 0), // Warna garis tepi
        width: 2.0, // Lebar garis tepi
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Message',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4.0),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your message',
            border: InputBorder.none, // Hapus garis tepi bawaan TextField
          ),
          maxLines: 5,
        ),
      ],
    ),
  ),
                  SizedBox(height: 6.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
  onPressed: () {
    // Tambahkan kode untuk menampilkan AlertDialog di sini
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Feedback Terkirim'),
          content: Text('Terima kasih atas masukan Anda! Feedback Anda berhasil terkirim.'),
          actions: [
            TextButton(
              onPressed: () {
                // Tutup AlertDialog saat tombol "OK" ditekan
                Navigator.of(context).pop();
              },
              child: Text('OK',
              style: TextStyle(
      color: Colors.black, // Mengubah warna teks menjadi hitam
    ),),
            ),
          ],
        );
      },
    );
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 0, 0, 0),
    // shape: RoundedRectangleBorder(
    //   borderRadius: BorderRadius.circular(50.0),
    // ),
  ),
  child: Text(
    'Submit',
    style: GoogleFonts.radley(fontSize: 14, fontWeight: FontWeight.bold),
  ),
),
                  ),
                ],
              ),
          ],
        ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 125, 29, 29),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
      ),
    );
  }
}