import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff365fff), Color(0xff5f10f0)],
  ).createShader(new Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 7), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });

    return MaterialApp(
      title: 'Secure Nagrik',
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                    ),
                    DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 40.0,
                        fontFamily: 'Horizon',
                        foreground: new Paint()..shader = linearGradient,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          RotateAnimatedText('Secure Nagrik'),
                          RotateAnimatedText('सेक्योर नागरिक'),
                          RotateAnimatedText('સેક્યુર નાગરિક'),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Image(
                    image: AssetImage('assets/images/logo9999.jpg'),
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
