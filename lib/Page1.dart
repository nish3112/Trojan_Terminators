import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final List<Map<String, String>> _messages = [    {'sender': 'Nishith KJSCE', 'message': 'Hello!'},    {'sender': 'You', 'message': 'Hi Nishith!'},    {'sender': 'Nishith KJSCE', 'message': 'How are you?'},    {'sender': 'You', 'message': 'I\'m doing great. Thanks for asking.'},    {'sender': 'You', 'message': 'What about you?'},    {'sender': 'Nishith KJSCE', 'message': 'I\'m doing good too.'},  ];

  final TextEditingController _textEditingController = TextEditingController();

  void _sendMessage(String message) {
    if (message.isNotEmpty) {
      setState(() {
        _messages.insert(0, {'sender': 'You', 'message': message});
      });
      _textEditingController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nishith KJSCE'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  alignment: _messages[index]['sender'] == 'You'
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: _messages[index]['sender'] == 'You'
                          ? Colors.blue[200]
                          : Colors.grey[300],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      _messages[index]['message']!,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: InputBorder.none,
                    ),
                    onSubmitted: _sendMessage,
                  ),
                ),
                SizedBox(width: 16),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _sendMessage(_textEditingController.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
