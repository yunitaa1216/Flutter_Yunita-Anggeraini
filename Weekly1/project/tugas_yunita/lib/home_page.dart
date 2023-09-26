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
              Image.asset('assets/logo.png', height: 40,),
              Text('KosApp',
              style: GoogleFonts.croissantOne(fontSize: 30),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [ 
              Row(
                children: [
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
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Feedback Terkirim'),
                              content: Text('Terima kasih atas masukan Anda! Feedback Anda berhasil terkirim.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 0, 0, 0),
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