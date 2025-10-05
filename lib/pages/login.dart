import 'package:flutter/material.dart';
import 'package:flutter_application_1/common-widgets/buttons/primary_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.emoji_events, size: 150),
            const Text('Start Early, Stay Ahead'),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                spacing: 20,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            PrimaryButton(
              onPressed: () {
                print('Login!');
              },
              child: Text('Login'),
            ),
            PrimaryButton(
              onPressed: () {
                print('Signup!');
              },
              child: Text('Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
