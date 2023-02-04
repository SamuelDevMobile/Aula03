import 'package:aula3/screens/personal_card_screen.dart';
import 'package:flutter/material.dart';

import 'challengeone.dart';

class MenuScreen extends StatelessWidget {
  static const String id = '/menu_screen';

  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Menu Inicial',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
              width: double.infinity,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, ChallengeOne.id);
              },
              child: Material(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(1000),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Text(
                    'Cartão pessoal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
