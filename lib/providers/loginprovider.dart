import 'package:flutter/material.dart';

class LoginFormProvider extends ChangeNotifier  {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();


  String email    = '';
  String password = '';

  /**
   * 
   */
  bool isValidateForm (){
    print(formkey.currentState?.validate()??false);
    print('$password - $email');
    return formkey.currentState?.validate()??false;
  } 

}