// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key? key,
    this.onPressed,
    required this.label,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Card(
          color: onPressed != null ? Colors.orange : Colors.orange,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                  letterSpacing: 2,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
