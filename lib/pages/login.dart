import 'package:flutter/material.dart';

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
            TextButton(
              onPressed: () {
                print('Login!');
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffffc942),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Color(0xff050315), width: 2),
                ),
              ),
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                print('Signup!');
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffffffff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: Color(0xff050315), width: 2),
                ),
              ),
              child: Text('Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
