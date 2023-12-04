import 'package:chatbot_flutter/models/jokes.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  List<Map<String, dynamic>> messages = [];

  void _sendMessage() {
    final text = _messageController.text;
    // Avoid sending empty messages
    if (text.trim().isEmpty) return;

    setState(() {
      // Add message to the list
      messages.insert(0, {"isUser": true, "message": text});
      _messageController.clear();
      //Wait for a second
      Future.delayed(const Duration(milliseconds: 800), () => _replyWithJoke());
    });
    // TODO: Here you will call the function to interact with GPT model
  }

  void _replyWithJoke() {
    final joke = JokeProvider.getRandomJoke();
    setState(() {
      // Add message to the list
      messages.insert(0, {"isUser": false, "message": joke});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Onur's ChatGPT Clone"),
          centerTitle: true,
          backgroundColor: Colors.black38),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              reverse: true, // To keep the latest messages at the bottom
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return ListTile(
                  title: Align(
                    alignment: message["isUser"]
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 12.0),
                      decoration: BoxDecoration(
                        color: message["isUser"]
                            ? Colors.amber[500]
                            : Colors.deepOrange[500],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Text(message["message"]),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration(
                hintText: 'Type a message',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ),
              onSubmitted: (_) => _sendMessage(),
            ),
          ),
        ],
      ),
    );
  }
}
