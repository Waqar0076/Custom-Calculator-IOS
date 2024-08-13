import 'package:flutter/material.dart';

class BtnScreen extends StatelessWidget {
  String title;
  Color btnColor;
  Color txtColor;
  VoidCallback onTap;

  BtnScreen({
    super.key,
    required this.title,
    required this.btnColor,
    required this.txtColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: btnColor,
        ),
        width: 70,
        height: 70,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: txtColor, fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
