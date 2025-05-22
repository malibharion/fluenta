import 'package:fluenta/constants/fonts.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.icon,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
      decoration: BoxDecoration(
        color: const Color(0xFFF3D9FB),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        maxLines: 1,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          icon: Icon(icon, color: Colors.black),
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.black,
              fontFamily: AppFonts.secondary,
              fontSize: 20),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
