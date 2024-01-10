import 'package:calculator_app/Widgets/each_button.dart';
import 'package:flutter/material.dart';
import '../Provider/button_controller.dart';

class AllButtonsSection extends StatelessWidget {
  const AllButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              EachButtonWidget(
                  buttontext: "C", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "DEL", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "ANS", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "/", buttonController: ButtonController()),
            ],
          ),
          Row(
            children: [
              EachButtonWidget(
                  buttontext: "7", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "8", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "9", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "*", buttonController: ButtonController()),
            ],
          ),
          Row(
            children: [
              EachButtonWidget(
                  buttontext: "4", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "5", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "6", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "-", buttonController: ButtonController()),
            ],
          ),
          Row(
            children: [
              EachButtonWidget(
                  buttontext: "1", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "2", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "3", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "+", buttonController: ButtonController()),
            ],
          ),
          Row(
            children: [
              EachButtonWidget(
                  buttontext: "00", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "0", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: ".", buttonController: ButtonController()),
              EachButtonWidget(
                  buttontext: "=", buttonController: ButtonController()),
            ],
          )
        ],
      ),
    );
  }
}
