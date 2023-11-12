import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final Size? minimumSize;
  final String buttonText;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.minimumSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.orange,
        maximumSize: const Size(150, 80),
        minimumSize: minimumSize,
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
