import 'package:flutter/material.dart';
import 'package:loignvideo/components/button.dart';
import 'package:loignvideo/components/text_field.dart';

class SignUp extends StatelessWidget {
  final Function()? onTap;
  const SignUp({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5BDF5),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("Assets/img1.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 270),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: ListView(
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: "Lemon",
                      color: Color(0xFFD5BDF5),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const MyTextFiled(
                    text: "Email",
                    icon: Icons.email,
                    obscureText: false,
                  ),
                  const SizedBox(height: 10,),
                  const MyTextFiled(
                    text: "Password",
                    icon: Icons.lock,
                    obscureText: true,
                  ),
                  const SizedBox(height: 10,),
                  const MyTextFiled(
                    text: "Confirm Password",
                    icon: Icons.lock,
                    obscureText: true,
                  ),
                  const SizedBox(height: 10,),
                  const MyButton(),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Lemon",
                          color: Color(0x8B000000),
                        ),
                      ),
                      const SizedBox(width: 5,),
                      GestureDetector(
                        onTap: onTap,
                        child: const Text(
                          "Login now",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Lemon",
                              color: Color(0xFFD5BDF5)
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
