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
      body:  Center(
        child: FutureBuilder(
          future: userservice.readInformationUser(),
          builder: (BuildContext context , AsyncSnapshot<String> snapshot){
            if(snapshot.hasData){
              print(snapshot.data.toString());
            }
            return Column(
              children: [
                SizedBox(height: 50,),
                Text('Hello'),
                Text(snapshot.data.toString().toUpperCase()),
              ],
            );

          }),
     ),
   );
  }
}