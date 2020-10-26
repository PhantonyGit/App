import 'package:flutter/material.dart';
import 'package:chees_app/widget/buttonwidget.dart';
import 'package:chees_app/widget/textfieldwidget.dart';
import 'package:provider/provider.dart';
import 'change_modifier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Phantony.Flutter',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextFieldWidget(
              hintText: 'Email',
              obscureText: false,
              prefixIconData: Icons.mail_outline,
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFieldWidget(
              hintText: 'Password',
              obscureText: false,
              prefixIconData: Icons.lock_outline,
            ),
            SizedBox(
              height: 20,
            ),
            ButtonWidget(
              title: "Login",
              hasBorder: false,
            ),
            SizedBox(
              height: 10,
            ),
            ButtonWidget(
              title: "Sign Up",
              hasBorder: true,
            ),
          ],
        ),
      ),
    );
  }
}
