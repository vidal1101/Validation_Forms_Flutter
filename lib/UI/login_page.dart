import 'package:flutter/material.dart';
import 'package:validation_form/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundScreen(
        childbody: childbodycard(),
        ),
    );
  }

  Widget childbodycard (){
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 220,),
          CardContainer(
            childcard: Text('Hola mundo')
          ),
        ],
      ),
    );
  }

  
}