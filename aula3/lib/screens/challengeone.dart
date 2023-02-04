import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChallengeOne extends StatefulWidget {
  static const String id = '/number_one';

  const ChallengeOne({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChallengeOneState();
}

class _ChallengeOneState extends State<ChallengeOne> {
  static const maxValue = 6;
  static final random = Random();

  var number1 = random.nextInt(maxValue) + 1;
  var number2 = random.nextInt(maxValue) + 1;

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
                          number1 = random.nextInt(maxValue);
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
                            number2 = random.nextInt(maxValue);
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
