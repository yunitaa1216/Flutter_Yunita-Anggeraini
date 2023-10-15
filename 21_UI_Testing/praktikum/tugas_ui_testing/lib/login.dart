import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoggedIn = false;
  String username = '';

  void _login() async {
    String enteredUsername = usernameController.text;
    String enteredPassword = passwordController.text;
    
    if (enteredUsername == 'admin' && enteredPassword == 'admin') {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setBool('loggedIn', true);
      prefs.setString('username', enteredUsername);

      setState(() {
        isLoggedIn = true;
        username = enteredUsername;
      });

    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Login Failed'),
            content: Text('Username or password is incorrect.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
  controller: usernameController,
  key: ValueKey('usernameField'),
  decoration: InputDecoration(labelText: 'Username'),
),
TextField(
  controller: passwordController,
  key: ValueKey('passwordField'),
  obscureText: true,
  decoration: InputDecoration(labelText: 'Password'),
),
ElevatedButton(
  onPressed: _login,
  key: ValueKey('loginButton'),
  child: Text('Login'),
),
          ],
        ),
      ),
    );
  }
}