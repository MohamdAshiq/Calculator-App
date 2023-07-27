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
        width: double.infinity,
        child: Text(
          "0",
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 40.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
