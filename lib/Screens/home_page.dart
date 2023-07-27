import 'package:calculator_app/Sections/all_buttons_section.dart';
import 'package:calculator_app/Sections/answer_text_section.dart';
import 'package:calculator_app/Sections/entire_equation_section.dart';
import 'package:calculator_app/Widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: AppBarWidget(),
        body: Column(
          children: [
            EntireEquationSection(),
            AnswerTextSection(),
            AllButtonsSection(),
          ],
        ));
  }
}
