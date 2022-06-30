import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:validation_form/UI/screen.dart';
import 'package:validation_form/services/services.dart';
import 'package:validation_form/widgets/constant.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> AuthLoginFirebase()),
      ],
      child: MaterialApp(
        theme: mytheme,
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (_)=> const LoginPage( key: Key('login'),),
          'createUserNew' : (_)=> const CreateUSerNew( key: Key('CreateUserNew'),),
          'home' :(_) => HomePage(),
        },
      ),
    );
  }
}