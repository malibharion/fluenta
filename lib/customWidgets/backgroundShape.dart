import 'package:flutter/material.dart';

class CurvedGradientBackground extends StatelessWidget {
  final Widget child;

  const CurvedGradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * 0.92;

    return Stack(
      children: [
        ClipPath(
          clipper: BottomCurveClipper(),
          child: Container(
            height: height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFCB78E2), Color(0xFFEBC0F7)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),

        Positioned(
          top: 40,
          bottom: 0,
          left: 0,
          right: 0,
          child: IgnorePointer(
            child: Container(
              height: 30,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white54, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
        ),

        // Foreground content
        child,
      ],
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height + 40,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
