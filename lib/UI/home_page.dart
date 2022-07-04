import 'package:flutter/material.dart';
import 'package:provider/provider.dart';    
import 'package:validation_form/services/services.dart';
import 'package:validation_form/widgets/widgets.dart';


class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? valueText= '';

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
      body:  FutureBuilder(
          future: userservice.readInformationUser(),
          builder: (BuildContext context , AsyncSnapshot<String> snapshot){
            if(snapshot.hasData){
              print(snapshot.data.toString());
            }
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Text('Hello'),
                  Text(snapshot.data.toString().toUpperCase()),
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: textFieldDebouncer(),
                  ),
                  SizedBox(height: 25,),
                  paintText(),
                  SizedBox(height: 25,),

                ],
              ),
            );

          }),
   );
  }

  Widget textFieldDebouncer(){
    return Container(
      child: TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: InputDecorationLogin.getinputDecorationlogin(
                hintText: 'Search',
                labelText: 'Search',
                prefixIcon: Icons.search_rounded,
              ),
              onChanged: (value){

                Debouncer.runDebouncer( (){
                  //peticion http o cualquier proceso de busqueda con el debouncer
                  setState(() {
                    valueText = value;
                    print(value);
                    paintText(); //si fuera la peticion http 
                  });
                  
                  
                });
  
              },
            ),
    );
  }

  Widget paintText(){
    return Container(
      child: FutureBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(valueText == ''){
            return const CircularProgressIndicator();
          }else{
            return Text(valueText.toString());
          }
        }
      ),
    );
  }

  
}