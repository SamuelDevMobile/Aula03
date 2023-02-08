import 'package:aula3/screens/authenticate_screen.dart';
import 'package:aula3/screens/menu_screens.dart';
import 'package:aula3/screens/challengeone.dart';
import 'package:aula3/screens/moviews_screen.dart';
import 'package:aula3/screens/personal_card_screen.dart';
import 'package:aula3/screens/quiz/finished_quis_screen.dart';
import 'package:aula3/screens/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: AuthenticateScreen.id,
      routes: {
        MenuScreen.id: (context) => const MenuScreen(),
        PersonalCardScreen.id: (context) => const PersonalCardScreen(),
        ChallengeOne.id: (context) => const ChallengeOne(),
        QuizScreen.id: (context) => const QuizScreen(),
        FinishedQuizScreen.id: (context) => FinishedQuizScreen(
          arguments: ModalRoute.of(context)?.settings.arguments as FinishedQuizScreenArguments
        ),
        MovieScreen.id: (context) => const MovieScreen(),
        AuthenticateScreen.id: (context) => AuthenticateScreen(),
      },
    );
  }
}