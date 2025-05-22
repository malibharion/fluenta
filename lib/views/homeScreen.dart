import 'package:fluenta/customWidgets/customRegisterButton.dart';
import 'package:fluenta/customWidgets/fluencyCard.dart';
import 'package:flutter/material.dart';
import 'package:fluenta/constants/fonts.dart';
import 'package:fluenta/customWidgets/backgroundShape.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      body: CurvedGradientBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.070),
                Center(
                  child: Text(
                    "Choose Your Fluency Path",
                    style: TextStyle(
                      fontSize: width * 0.062,
                      fontWeight: FontWeight.w700,
                      fontFamily: AppFonts.primary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: height * 0.010),
                FluencyCard(
                  width: width,
                  height: height,
                  imagePath: 'assets/images/Head Profile.png',
                  title: 'Developmental stuttering',
                  text1: 'Slow Reading Exercise',
                  text2: 'Breathing Control Exercise',
                ),
                SizedBox(height: height * 0.020),
                FluencyCard(
                  width: width,
                  height: height,
                  imagePath: 'assets/images/Alzheimer.png',
                  title: 'Neurogenic Stuttering',
                  text1: 'Rhythmic Speech Control',
                  text2: 'Voice Modulation',
                ),
                SizedBox(height: height * 0.060),
                CustomButton(
                  text: 'Exercise',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
