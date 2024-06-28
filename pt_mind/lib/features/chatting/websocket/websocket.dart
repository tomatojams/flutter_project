// 따로 프로젝트 만들어서 테스트해보기

import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Langchain',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: const StreamLangchain(),
    );
  }
}

class StreamLangchain extends StatefulWidget {
  const StreamLangchain({super.key});

  @override
  _StreamLangchainState createState() => _StreamLangchainState();
}

class _StreamLangchainState extends State<StreamLangchain> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _responses = [];
  final ScrollController _scrollController = ScrollController();
  WebSocketChannel? _channel;
  int _reconnectAttempts = 0;
  final int _maxReconnectAttempts = 5;

  @override
  void initState() {
    super.initState();
    _setupWebSocket();
  }

  void _setupWebSocket() {
    _channel = WebSocketChannel.connect(
      Uri.parse('ws://10.0.2.2:8000/ws/chat/'),
    );

    _channel?.stream.listen(
      (event) {
        final data = jsonDecode(event);
        final sender = data['name'];
        if (data['event'] == 'on_parser_start') {
          setState(() {
            _responses
                .add({'sender': sender, 'message': '', 'id': data['run_id']});
          });
        } else if (data['event'] == 'on_parser_stream') {
          setState(() {
            final index =
                _responses.indexWhere((msg) => msg['id'] == data['run_id']);
            if (index != -1) {
              _responses[index]['message'] =
                  _responses[index]['message']! + data['data']['chunk'];
            }
          });
        }
      },
      onError: (error) {
        print("WebSocket error: $error");
      },
      onDone: () {
        print("WebSocket closed.");
        _handleReconnect();
      },
    );
  }

  void _handleReconnect() {
    if (_reconnectAttempts < _maxReconnectAttempts) {
      final timeout = Duration(seconds: 2 ^ _reconnectAttempts);
      Future.delayed(timeout, () {
        setState(() {
          _reconnectAttempts++;
        });
        _setupWebSocket();
      });
    } else {
      print("Max reconnect attempts reached.");
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _channel?.sink.close(status.normalClosure);
    super.dispose();
  }

  void _sendMessage() {
    final input = _controller.text;
    setState(() {
      _responses.add({'sender': 'You', 'message': input});
    });
    _channel?.sink.add(jsonEncode({'message': input}));
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Langchain'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _responses.length,
              itemBuilder: (context, index) {
                final response = _responses[index];
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:
                        response['sender'] == 'You' ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(response['sender']!,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      Text(response['message']!),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                        hintText: 'Type your message here...'),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
