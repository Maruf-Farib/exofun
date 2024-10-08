import 'package:exofun/super_earth/components/quiz_template.dart';
import 'package:exofun/super_earth/quiz/quiz3.dart';
import 'package:flutter/material.dart';

class Quiz2 extends StatelessWidget {
  const Quiz2({super.key});

  @override
  Widget build(BuildContext context) {
    return QuizTemplate(
      nextPage: Quiz3(),
      number: 2,
      question: 'Which method was used to detect Proxima Centauri b?',
      answerA: 'Transit Method',
      answerB: 'Gravitational Microlensing',
      answerC: 'Moons around other planets',
      answerD: 'Radial Velocity Method',
      correctAnswer: 4,
    );
  }
}
