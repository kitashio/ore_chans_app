import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PostTest extends StatefulWidget {
  const PostTest({super.key});

  @override
  _PostTestState createState() => _PostTestState();
}

class _PostTestState extends State<PostTest> {
  final TextEditingController _controller = TextEditingController();
  final Dio _dio = Dio();

  void _sendData() async {
    if (_controller.text.isNotEmpty) {
      final response = await _dio.post(
        'http://localhost:50021/audio_query',
        data: {
          'text': _controller.text,
        },
      );
      print(response.data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input and POST in Flutter')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter your text'),
            ),
            ElevatedButton(
              onPressed: _sendData,
              child: Text('Send'),
            ),
          ],
        ),
      ),
    );
  }
}