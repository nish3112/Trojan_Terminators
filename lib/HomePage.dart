import 'package:flutter/material.dart';
import 'Page1.dart';
import 'Page2.dart';
import 'Page3.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _senders = [        'HDFC-BK',        '+91 8054326758',        'PAYTM-BK',        'Nishith KJSCE',        '+91 6472621209',        '+91 9812439272',        '+91 7938982931',        'ADHAAR-GOVT'    ];

  final List<String> _messages = [        '****** is your OTP for your transaction at SWIGGY',        'How are you?',        '****** is your OTP for your transaction at SWIGGY',        'This is a message',        'Flutter is awesome!',        'This is another message',        'Good morning!',        '****** is your OTP for your transaction at SWIGGY'    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secure Nagrik',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Secure Nagrik'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: _senders.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text(
                _senders[index],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                _messages[index],
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '10:30 AM',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  // const Icon(Icons.check_circle_outline),
                ],
              ),
              onTap: () {
                if (index == 3) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));
                } else if (index == 0) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
                }else if (index == 2) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
                }
              },
            );
          },
        ),
      ),
    );
  }
}
