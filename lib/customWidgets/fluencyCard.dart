import 'package:fluenta/constants/fonts.dart';
import 'package:flutter/material.dart';

class FluencyCard extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;
  final String title;
  final String text1;
  final String text2;

  const FluencyCard({
    required this.width,
    required this.height,
    required this.imagePath,
    required this.title,
    required this.text1,
    required this.text2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: height * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: height * 0.02, horizontal: width * 0.03),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFCB78E2),
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(imagePath, width: width * 0.08),
                  SizedBox(width: width * 0.02),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: width * 0.05,
                      fontWeight: FontWeight.w500,
                      fontFamily: AppFonts.primary,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.11,
                vertical: height * 0.07,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFEACBF3),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                      fontFamily: AppFonts.secondary,
                      fontSize: width * 0.045,
                    ),
                  ),
                  SizedBox(height: height * 0.015),
                  Text(
                    text2,
                    style: TextStyle(
                      fontFamily: AppFonts.secondary,
                      fontSize: width * 0.045,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
