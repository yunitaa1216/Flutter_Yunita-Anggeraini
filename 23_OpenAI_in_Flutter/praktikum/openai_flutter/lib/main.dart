import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChatBotPage extends StatefulWidget {
  @override
  _ChatBotPageState createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  TextEditingController _textController = TextEditingController();
  ScrollController _scrollController = ScrollController();
  List<String> _messages = [];
  bool _isLoading = false;

  Future<String> _getSmartphoneRecommendation(double price, int cameraMP, int storageGB) async {
    const apiKey = "";
    const model = "text-davinci-003";

    var url = Uri.https("api.openai.com", "/v1/completions");

    final prompt = "Saya membutuhkan rekomendasi smartphone dengan harga kurang dari \$$price, kamera $cameraMP MP, dan kapasitas penyimpanan internal $storageGB GB.";

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        "Authorization": "Bearer $apiKey"
      },
      body: json.encode({
        "model": model,
        "prompt": prompt,
        'temperature': 0.7,
        'max_tokens': 200,
        'top_p': 1,
        'frequency_penalty': 0.0,
        'presence_penalty': 0.0,
      }),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      String recommendation = jsonResponse['choices'][0]['text'];

      return recommendation;
    } else {
      return "Failed to get recommendation.";
    }
  }

  void _sendMessage(String message) {
    setState(() {
      _messages.add("User: $message");
      _isLoading = true;
    });

    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );

    _getSmartphoneRecommendation(500.0, 12, 128).then((recommendation) {
      setState(() {
        _messages.add("Chatbot: $recommendation");
        _isLoading = false;
      });
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smartphone Recommendation Chatbot"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          _buildInputArea(),
        ],
      ),
    );
  }

  Widget _buildInputArea() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: "Type your message...",
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              _sendMessage(_textController.text);
              _textController.clear();
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChatBotPage(),
  ));
}