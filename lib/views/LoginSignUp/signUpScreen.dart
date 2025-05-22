import 'package:fluenta/constants/fonts.dart';
import 'package:fluenta/customWidgets/backgroundShape.dart';
import 'package:fluenta/customWidgets/customRegisterButton.dart';
import 'package:fluenta/customWidgets/customTextFeild.dart';
import 'package:fluenta/views/LoginSignUp/loginScreen.dart';
import 'package:fluenta/views/homeScreen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          icon: Icons.person,
                          hintText: 'Enter your full name',
                          controller: nameController,
                        ),
                        CustomTextField(
                          icon: Icons.email,
                          hintText: 'Enter your email',
                          controller: emailController,
                        ),
                        CustomTextField(
                          icon: Icons.lock,
                          hintText: 'Enter password',
                          controller: passwordController,
                          obscureText: true,
                        ),
                        CustomTextField(
                          icon: Icons.lock_outline,
                          hintText: 'Confirm password',
                          controller: confirmPasswordController,
                          obscureText: true,
                        ),
                        const SizedBox(height: 16),
                        CustomButton(
                          text: 'Register',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                        ),
                      ],
                    ),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(
                  width: 150,
                  image: AssetImage('assets/images/registerImg.png'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 3),
                  child: Text('Already have an account?',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: AppFonts.secondary,
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginscreen()));
                  },
                  child: Text('Login',
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
    );
  }
}
