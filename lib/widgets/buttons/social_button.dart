import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SocialButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,

      child: ElevatedButton(
        onPressed: onPressed,

        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),

        child: Text(text),
      ),
    );
  }
}
