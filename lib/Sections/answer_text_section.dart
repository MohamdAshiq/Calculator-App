import 'package:calculator_app/Provider/equation_text_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnswerTextSection extends StatelessWidget {
  const AnswerTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      child: SizedBox(
        height: 50.h,
        width: double.infinity,
        child: ValueListenableBuilder(
          valueListenable: EquationTextController.answer,
          builder: (context, String answer, child) => ListView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            shrinkWrap: true,
            children: [
              Text(
                answer,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
