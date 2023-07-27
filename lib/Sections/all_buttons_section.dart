import 'package:calculator_app/Constants/constants.dart';
import 'package:calculator_app/Widgets/each_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Provider/button_controller.dart';

class AllButtonsSection extends StatelessWidget {
  const AllButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      padding: const EdgeInsets.all(15),
      shrinkWrap: true,
      crossAxisSpacing: 10.h,
      mainAxisSpacing: 5.h,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(
          Constants.buttontext.length,
          (index) => EachButtonWidget(
                buttontext: Constants.buttontext[index].toString(),
                buttonController: ButtonController(),
              )),
    );
  }
}
