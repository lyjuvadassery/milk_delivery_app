import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _pinController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _pinController,
            decoration: InputDecoration(
              labelText: 'Enter your PIN',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // TODO: Verify the PIN code
            },
            child: Text('Verify PIN'),
          ),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Enter your email',
            ),
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Enter your password',
            ),
            obscureText: true,
          ),
          ElevatedButton(
            onPressed: () {
              // TODO: Sign up with email and password
            },
            child: Text('Sign Up with Email'),
          ),
          ElevatedButton(
            onPressed: () {
              // TODO: Sign up with Google
            },
            child: Text('Sign Up with Google'),
          ),
          TextButton(
            onPressed: () {
              // TODO: Navigate to Sign In page
            },
            child: Text('Already a registered user? Sign in.'),
          ),
        ],
      ),
    );
  }
}
