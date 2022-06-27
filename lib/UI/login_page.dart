import 'package:flutter/material.dart';
import 'package:validation_form/widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundScreen(
        childbody: childbodycard(context),
        ),
    );
  }

  Widget childbodycard (BuildContext context){
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 200,),
          CardContainer(
            childcard: Column(
              children: [
                SizedBox(height: 10,),
                Text('Login' , style: Theme.of(context).textTheme.headline4 ),
                SizedBox(height: 20,),
                _Loginforms(),
              ],
            )
          ),
          SizedBox(height: 30,),
          Text('Create a new account', style:  Theme.of(context).textTheme.headline6,)
        ],
      ),
    );
  }

}

class _Loginforms extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        // TODO: mantener la  referencia del KEY 
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorationLogin.getinputDecorationlogin(
                hintText: 'Example@gmail.com',
                labelText: 'Email',
                prefixIcon: Icons.alternate_email_rounded,
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecorationLogin.getinputDecorationlogin(
                hintText: 'your password',
                labelText: 'Password',
                prefixIcon: Icons.lock_outline_rounded,
              ),
            ),
            SizedBox(height: 30,),
          ],
        )
      ),
    );
  }
}