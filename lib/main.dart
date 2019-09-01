import 'package:flutter/material.dart';
import './pages/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Login',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AuthPage());
  }
}
