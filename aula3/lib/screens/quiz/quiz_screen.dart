import 'dart:math';
import 'package:aula3/screens/quiz/components/question_button.dart';
import 'package:aula3/screens/quiz/finished_quis_screen.dart';
import 'package:aula3/screens/quiz/model/question_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  static const String id = '/quiz_screen';

  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

List<QuestionModel> loadQuestion() {
  return [
    QuestionModel(
        question: 'Que cor é o ceu ?', options: ['verde', 'lilaz'], answer: 1),
    QuestionModel(
        question: 'Qual a cor do cavalo branco de napoleao',
        options: ['preto', 'marrom', 'branco'],
        answer: 2),
    QuestionModel(
        question: 'Você gosta de leite', options: ['sim', 'não'], answer: 3)
  ];
}

class _QuizScreenState extends State<QuizScreen> {
  List<QuestionModel> questions = [];
  var questionIndex = 0;
  var score = 0;

  @override
  void initState() {
    super.initState();
    questions = loadQuestion();
  }

  void onOptionPressed(int selectOption)  {
    final currentQuestion = questions[questionIndex];

    if (selectOption == currentQuestion.answer) {
      score++;
    }

    goToNextQuestion();
  }

  void goToNextQuestion() {
    if (questionIndex == questions.length - 1) {
      Navigator.pushReplacementNamed(
          context,
          FinishedQuizScreen.id,
        arguments: FinishedQuizScreenArguments(score: score),
      );
    } else {
      setState(() {
        questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(currentQuestion.question),
              const SizedBox(height: 32),
              ListView.separated(
                  itemCount: currentQuestion.options.length,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) =>
                  const SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return QuestionButton(
                        text: currentQuestion.options[index],
                        onPressed: () {
                          onOptionPressed(index);
                        }
                    );
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

