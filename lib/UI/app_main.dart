import 'package:flutter/material.dart';
import 'package:validation_form/UI/screen.dart';
import 'package:validation_form/widgets/constant.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mytheme,
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (_)=> const LoginPage( key: Key('login'),),
        'home' :(_) => HomePage(),
      },
    );
  }
}