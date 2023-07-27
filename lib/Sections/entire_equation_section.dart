import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EntireEquationSection extends StatelessWidget {
  const EntireEquationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          "0",
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 35.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
