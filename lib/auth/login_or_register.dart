import 'package:flutter/material.dart';
import 'package:loignvideo/sign_in.dart';
import 'package:loignvideo/sign_up.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  bool showLogin = true;
  void togglePages(){
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLogin){
      return SignIn(onTap: togglePages,);
    }
    else{
      return SignUp(onTap: togglePages,);
    }
  }
}
