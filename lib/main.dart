import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: magicBall(),
    );
  }
}

class magicBall extends StatefulWidget {
  const magicBall({Key? key}) : super(key: key);

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {
  int changePhrase = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
                child: TextButton(
              onPressed: () {
                setState(() {
                  changePhrase = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$changePhrase.png'),
            )),
          ],
        ),
      ),
    );
  }
}
