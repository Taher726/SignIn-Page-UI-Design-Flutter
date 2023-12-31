import 'package:flutter/material.dart';
import 'package:loignvideo/components/button.dart';
import 'package:loignvideo/components/text_field.dart';

class SignIn extends StatelessWidget {
  final Function()? onTap;
  const SignIn({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD5BDF5),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Assets/img1.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              )
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 270),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: ListView(
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFFD5BDF5),
                      fontFamily: "Lemon"
                    ),
                  ),
                  SizedBox(height: 20,),
                  MyTextFiled(
                    text: "Email",
                    icon: Icons.email,
                    obscureText: false,
                  ),
                  SizedBox(height: 10,),
                  MyTextFiled(
                    text: "Password",
                    icon: Icons.lock,
                    obscureText: true,
                  ),
                  SizedBox(height: 10,),
                  MyButton(),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Lemon",
                          color: Color(0x8B000000),
                        ),
                      ),
                      SizedBox(width: 5,),
                      GestureDetector(
                        onTap: onTap,
                        child: Text(
                          "Register now",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Lemon",
                              color: Color(0xFFD5BDF5)
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
