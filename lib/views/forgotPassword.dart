import 'package:fluenta/customWidgets/backgroundShape.dart';
import 'package:fluenta/customWidgets/customTextFeild.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CurvedGradientBackground(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.070,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Text('forget password'),
                  Text(
                      'Please enter your email address\n to receive a verification code ')
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            Image(
                image: AssetImage(
                    'assets/images/undraw_forgot-password_odai 1.png')),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            Text('Enter you Email adress'),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
              decoration: BoxDecoration(
                color: const Color(0xFFF3D9FB),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                controller: controller,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Send OTP'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFCB78E2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
            )
          ],
        ),
      ),
    );
  }
}
