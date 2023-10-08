import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String responseText = '';

  // Fungsi untuk melakukan POST request
  Future<void> postData() async {
    try {
      final dio = Dio();

      // Ganti URL dengan URL yang sesuai
      final response = await dio.post(
        'https://jsonplaceholder.typicode.com/posts/1', // Ganti dengan URL yang sesuai
        data: {
          'id': 1,
          'title': 'foo',
          'body': 'bar',
          'userId': 1,
        },
      );

      if (response.statusCode == 201) {
        // POST request berhasil
        print('POST request berhasil: ${response.data}');
      } else {
        throw Exception('Gagal melakukan POST request');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  // Fungsi untuk melakukan PUT request
  Future<void> putData() async {
    try {
      final dio = Dio();

      // Ganti URL dengan URL yang sesuai
      final response = await dio.put(
        'https://example.com/api/endpoint', // Ganti dengan URL yang sesuai
        data: {
          'id': 1,
          'title': 'foo',
          'body': 'bar',
          'userId': 1,
        },
      );

      if (response.statusCode == 200) {
      // PUT request berhasil
      print('PUT request berhasil: ${response.data}');
      setState(() {
        responseText = 'PUT request berhasil: ${response.data}';
      });
    } else {
      throw Exception('Gagal melakukan PUT request');
    }
  } catch (e) {
    print('Error: $e');
  }
}

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: postData, // Panggil postData saat tombol ditekan
              child: Text('Kirim POST Request'),
            ),
            ElevatedButton(
              onPressed: putData, // Panggil putData saat tombol ditekan
              child: Text('Kirim PUT Request'),
            ),
            if (responseText.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'POST request berhasil:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    responseText,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
        ],
      ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}