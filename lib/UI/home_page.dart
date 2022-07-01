import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:validation_form/services/services.dart';


class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final userservice = Provider.of<AuthLoginFirebase>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Products User'),
        actions: [
          IconButton(
            onPressed: (){
               UserSecureStorage.logout('token');
               Navigator.pushReplacementNamed(context, 'login');
            } ,
             icon: Icon(Icons.login_rounded) ),
        ],
      ),
      body: const  Center(
        child: Text('Hello World'),
     ),
   );
  }
}