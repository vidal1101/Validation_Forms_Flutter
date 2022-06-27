import 'package:flutter/material.dart';
import 'package:validation_form/UI/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(key: Key('LoginPage') ),
    );
  }
}