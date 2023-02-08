import 'package:aula3/screens/quiz/components/question_button.dart';
import 'package:aula3/widget/rounded_textfield.dart';
import 'package:flutter/material.dart';

class AuthenticateScreen extends StatefulWidget {
  static const String id = '/';

  const AuthenticateScreen({super.key});

  @override
  State<AuthenticateScreen> createState() => _AuthenticateScreenState();
}

class _AuthenticateScreenState extends State<AuthenticateScreen> {
  var email = '';
  var password = '';
  var obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedTextField(
              text: 'Email',
              onChanged: (newValue) {
                email = newValue;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            Stack(
              children: [
                RoundedTextField(
                  text: "Senha",
                  obscureText: obscurePassword,
                  onChanged: (newValue) {
                    password = newValue;
                  },
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      obscurePassword = !obscurePassword;
                      setState(() {});
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Icon(obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const QuestionButton(
              text: 'Entrar',
              onPressed: authenticateUser,
            ),
          ],
        ),
      ),
    ));
  }
}

void authenticateUser() {}
