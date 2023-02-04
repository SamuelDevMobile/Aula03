import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/my_buttom.dart';

class PersonalCardScreen extends StatelessWidget {
  static const String id = '/personal_card_screen';

  const PersonalCardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const myPhone = '11 70707000';
    const myEmail = 'test@emal.com';

    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://miro.medium.com/max/1400/0*vowtRZE_wvyVA7CB'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Samuel Ribeiro',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16, width: double.infinity),
            MyButtom(
              icon: Icons.smartphone,
              text: myPhone,
              onPressed: () {
                print('Clicou no telefone');
              },
            ),
            MyButtom(
              icon: Icons.email,
              text: myEmail,
              onPressed: () {
                print('Clicou no email');
              },
            ),
          ],
        ),
      ),
    );
  }
}