import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class AuthLoginFirebase extends ChangeNotifier{

  final String _baseUrlFirebase      = 'identitytoolkit.googleapis.com';
  final String _apitokenProject      = 'AIzaSyA5wWLm2hhvueBWUEsNP9cM4pWQG26P6sY';


  /**
   * el metodo retorna null si el usuario se crea e ingresa. 
   * retorna el error si el usuario ya existe 
   */
  Future<String?> createuserFirebase( String email, String password )async{

    final Map<String, dynamic> authDateUser = {
      'email'     : email,
      'password'  : password,
    };

    final urlrequest = Uri.https(_baseUrlFirebase, '/v1/accounts:signUp' ,{
      'key': _apitokenProject,
      }
    );

    final resp = await http.post(urlrequest , body:  json.encode(authDateUser) );

    final Map<String , dynamic> decodeResponse = json.decode(resp.body);

    print(decodeResponse.toString());

    if( decodeResponse['idToken'] != null ){
      //si esta la llave  y existe, es guardarla y tood bien
      //print('todo bien');
      return null;
    }else{
      //es porque el correo ya existe  o algun otro error 
      return decodeResponse['error']['message'];
    }
  }



  

}