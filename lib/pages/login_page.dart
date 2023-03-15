import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login_page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign in',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home_page');
              },
              child: Text('Sign in'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 48.0),
              ),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {},
              child: Text('Forgot password?'),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account? '),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/signup_page');
                  },
                  child: Text('Sign up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
