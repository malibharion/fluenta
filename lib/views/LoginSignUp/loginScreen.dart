import 'package:fluenta/constants/fonts.dart';
import 'package:fluenta/customWidgets/backgroundShape.dart';
import 'package:fluenta/customWidgets/customRegisterButton.dart';
import 'package:fluenta/customWidgets/customTextFeild.dart';
import 'package:fluenta/views/LoginSignUp/signUpScreen.dart';
import 'package:fluenta/views/homeScreen.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: CurvedGradientBackground(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.070,
                ),
                Center(
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: AppFonts.primary,
                      fontSize: MediaQuery.of(context).size.width * 0.09,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.001,
                ),
                Center(
                  child: Text(
                    'Let\'s Begin Your Journey To',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: AppFonts.secondary,
                      fontSize: MediaQuery.of(context).size.width * 0.050,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'Confident Speech',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: AppFonts.secondary,
                      fontSize: MediaQuery.of(context).size.width * 0.050,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.014,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        child: Column(
                          children: [
                            CustomTextField(
                              icon: Icons.email,
                              hintText: 'Enter your email',
                              controller: _emailController,
                            ),
                            CustomTextField(
                              icon: Icons.lock,
                              hintText: 'Enter password',
                              controller: _passwordController,
                              obscureText: true,
                            ),
                            const SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 120),
                              child: CustomButton(
                                text: 'Sign In',
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                },
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Text('Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: AppFonts.secondary,
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                          )),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationScreen()));
                      },
                      child: Text('Register',
                          style: TextStyle(
                            color: Color(0xFFBA08EB),
                            fontFamily: AppFonts.secondary,
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 280,
          right: 0,
          left: 0,
          bottom: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image(
                width: 150,
                image: AssetImage('assets/images/Group 64.png'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
