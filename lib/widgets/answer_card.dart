// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    Key? key,
    required this.question,
    required this.isSelected,
    this.correctAnswerIndex,
    this.selectedAnswerIndex,
    required this.currentIndex,
  }) : super(key: key);

  final String question;
  final bool isSelected;
  final int? correctAnswerIndex;
  final int? selectedAnswerIndex;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 10.0));
  }
}
