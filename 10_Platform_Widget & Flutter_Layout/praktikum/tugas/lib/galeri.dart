import 'package:flutter/material.dart';

class GaleriPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/bg.jpg',
      'assets/bg.jpg',
      'assets/bg.jpg',
    ];

    void _showBottomSheet(BuildContext context, String imagePath) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // Image
                Image.asset(
                  imagePath,
                  height: 200, // You can adjust the image height as needed
                  fit: BoxFit.cover, // You can adjust the image fit as needed
                ),
                SizedBox(height: 16), // Spacing
                // Text and choices
                Text(
                  'Ingin melihat detail gambar?',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 16), // Spacing
                ListTile(
                  title: Text('Ya'),
                  onTap: () {
                    // Navigasi ke halaman baru ketika "Ya" ditekan
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => NewPage(),
                    ));
                  },
                ),
                ListTile(
                  title: Text('Tidak'),
                  onTap: () {
                    Navigator.of(context).pop(); // Tutup bottom sheet jika "Tidak" ditekan
                  },
                ),
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _showBottomSheet(context, images[index]); // Berikan imagePath ke _showBottomSheet
            },
            child: Card(
              elevation: 2.0,
              child: Image.asset(
                images[index],
                fit: BoxFit.cover, // Anda dapat menyesuaikan fit gambar sesuai kebutuhan
              ),
            ),
          );
        },
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Baru'),
      ),
      body: Center(
        child: Text('Ini adalah halaman baru'),
      ),
    );
  }
}