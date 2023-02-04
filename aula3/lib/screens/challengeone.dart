import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChallengeOne extends StatefulWidget {
  static const String id = '/number_one';

  const ChallengeOne({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChallengeOneState();
}

String randomNumber() => (Random().nextInt(6) + 1).toString();

class _ChallengeOneState extends State<ChallengeOne> {
  var number1 = randomNumber();
  var number2 = randomNumber();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          number1 = randomNumber();
                        });
                      },
                      child:
                          Image.asset('assets/dice${number1.toString()}.png')),
                ),
                const SizedBox(width: 16),
                Expanded(
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            number2 = randomNumber();
                          });
                        },
                        child: Image.asset(
                            'assets/dice${number2.toString()}.png'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
