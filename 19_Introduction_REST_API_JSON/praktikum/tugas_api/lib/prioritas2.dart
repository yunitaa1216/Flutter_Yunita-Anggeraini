import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DiceBear Avatar Viewer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Dio _dio;
  String _avatarUrl = '';

  @override
  void initState() {
    super.initState();
    _dio = Dio();
    _fetchAvatar();
  }

  Future<void> _fetchAvatar() async {
    try {
      final response = await _dio.get('https://api.dicebear.com/7.x/bottts/svg');
      if (response.statusCode == 200) {
        setState(() {
          _avatarUrl = response.requestOptions.uri.toString();
        });
      } else {
        throw Exception('Failed to fetch avatar');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DiceBear Avatar Viewer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Random Avatar:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            if (_avatarUrl.isNotEmpty)
              SvgPicture.network(
                _avatarUrl,
                width: 150,
                height: 150,
              )
            else
              const CircularProgressIndicator(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _fetchAvatar,
              child: const Text('Generate New Avatar'),
            ),
          ],
        ),
      ),
    );
  }
}