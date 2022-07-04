import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:validation_form/providers/list_country.dart';
import 'package:validation_form/services/services.dart';
import 'package:validation_form/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? valueText = '';

  @override
  Widget build(BuildContext context) {
    final userservice = Provider.of<AuthLoginFirebase>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Products User'),
        actions: [
          IconButton(
              onPressed: () {
                UserSecureStorage.logout('token');
                Navigator.pushReplacementNamed(context, 'login');
              },
              icon: Icon(Icons.login_rounded)),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            FutureBuilder(
                future: userservice.readInformationUser(),
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  if (snapshot.hasData) {
                    print(snapshot.data.toString());
                  }
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(snapshot.data.toString().toUpperCase()),
                  );
                }),
            scroolllbody(),
            //ListCountry(),

          ],
        ),
      ),
    );
  }

  Widget scroolllbody() {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: textFieldDebouncer(),
        ),
        SizedBox(
          height: 25,
        ),
        paintText(),
        SizedBox(
          height: 25,
        ),
        //ListCountry(),
      ],
    );
  }

  Widget textFieldDebouncer() {
    return Container(
      child: TextFormField(
        autocorrect: false,
        keyboardType: TextInputType.text,
        decoration: InputDecorationLogin.getinputDecorationlogin(
          hintText: 'Search',
          labelText: 'Search',
          prefixIcon: Icons.search_rounded,
        ),
        onChanged: (value) {
          Debouncer.runDebouncer(() {
            //peticion http o cualquier proceso de busqueda con el debouncer
            setState(() { 
              valueText = value;
              print(value);
              //showSearch(context: context, delegate: SearchDelegateCustom() );
            });
          });
        },
      ),
    );
  }

  Widget paintText() {
    return Container(
      child: FutureBuilder(
          builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (valueText == '') {
          return const CircularProgressIndicator();
        } else {
          return Text(valueText.toString());
        }
      }),
    );
  }
}
