import 'package:flutter/material.dart';

class GaleriPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/home.jpg',
      'assets/home.jpg',
      'assets/home.jpg',
    ];

    void _showBottomSheet(BuildContext context, String imagePath) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  imagePath,
                  height: 100, 
                  fit: BoxFit.cover, 
                ),
                SizedBox(height: 16),
                // Text and choices
                Text(
                  'Ingin melihat detail gambar?',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 16),
                ListTile(
                  title: Text('Ya'),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => NewPage(imagePath: imagePath,),
                    ));
                  },
                ),
                ListTile(
                  title: Text('Tidak'),
                  onTap: () {
                    Navigator.of(context).pop();
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
        backgroundColor: Color.fromARGB(255, 23, 28, 108),
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
              _showBottomSheet(context, images[index]);
            },
            child: Card(
              elevation: 2.0,
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  final String imagePath;

  NewPage({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 28, 108),
        title: Text('Detail Gambar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              imagePath,
              height: 400,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}