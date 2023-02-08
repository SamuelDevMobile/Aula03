import 'package:aula3/screens/authenticate_screen.dart';
import 'package:aula3/screens/moviews_screen.dart';
import 'package:aula3/screens/personal_card_screen.dart';
import 'package:aula3/screens/quiz/quiz_screen.dart';
import 'package:aula3/widget/rounded_button.dart';
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
            IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  RoundedButton(id: PersonalCardScreen.id, text: "Cartão Postal"),
                  SizedBox(width: 16, height: 16),
                  RoundedButton(id: ChallengeOne.id, text: "Desafio Dado"),
                  SizedBox(width: 16, height: 16),
                  RoundedButton(id: QuizScreen.id, text: "Desafio - Quiz"),
                  SizedBox(width: 16, height: 16),
                  RoundedButton(id: MovieScreen.id, text: "Consumindo API"),
                  SizedBox(width: 16, height: 16),
                  RoundedButton(id: AuthenticateScreen.id, text: "Autenticacao"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
