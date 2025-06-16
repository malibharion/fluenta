import 'package:fluenta/constants/fonts.dart';
import 'package:fluenta/customWidgets/splashClipper.dart';
import 'package:fluenta/views/LoginSignUp/signUpScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ClipPath(
              clipper: SplashClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.95,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFCB78E2), Color(0xFFEBC0F7)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Center(
                child: Image(
                    image: AssetImage(
                  'assets/images/updated Logo.png',
                )),
              ),
              Center(
                child: Text(
                  'Fluenta',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: AppFonts.primary,
                    fontSize: MediaQuery.of(context).size.width * 0.12,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Stutter Less, Speak Confidently',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: AppFonts.secondary,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
              ),
              Center(
                child: Image(
                    image: AssetImage(
                  'assets/images/registerImg.png',
                )),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFCB78E2),
                    elevation: 6,
                    shadowColor: Colors.black45,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 120, vertical: 16),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: AppFonts.secondary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
