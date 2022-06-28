import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier  {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();


  String email    = '';
  String password = '';

  bool _isloading = false;

  bool get isloading => _isloading;

  set  isloading (bool value ){
    this._isloading = value ;
    notifyListeners();
  }
  




  /**
   * validar los campos que esten correcto con sus validater y cambiar el estado (true , false) 
   * al boton parad dar acceso a otra pantalla
   */
  bool isValidateForm (){
    print(formkey.currentState?.validate()??false);
    print('$password - $email');
    return formkey.currentState?.validate()??false;
  } 

}