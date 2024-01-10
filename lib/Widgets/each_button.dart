import 'package:calculator_app/Provider/button_controller.dart';
import 'package:calculator_app/Provider/equation_text_controller.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:provider/provider.dart';

class EachButtonWidget extends StatelessWidget {
  const EachButtonWidget(
      {super.key, required this.buttontext, required this.buttonController});

  final String buttontext;
  final ButtonController buttonController;

  @override
  Widget build(BuildContext context) {
    final controller =
        Provider.of<EquationTextController>(context, listen: false);

    double blur = buttonController.ispressed ? 1.5 : 2;
    Offset distance = buttonController.ispressed
        ? const Offset(2, 2)
        : const Offset(2.5, 2.5);
    return Expanded(
      child: GestureDetector(
        onTap: () => controller.buttonFunctions(buttontext),
        child: Listener(
          onPointerDown: (event) => buttonController.onpointerdown(),
          onPointerUp: (event) => buttonController.onpointerup(),
          child: AnimatedBuilder(
            animation: buttonController,
            builder: (context, child) => AnimatedContainer(
              height:75,
              duration: const Duration(milliseconds: 120),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 28, 27, 31),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: blur,
                        offset: -distance,
                        color: const Color.fromARGB(255, 40, 40, 40),
                        inset: buttonController.ispressed),
                    BoxShadow(
                        blurRadius: blur,
                        offset: distance,
                        color: const Color.fromARGB(66, 87, 86, 86),
                        inset: buttonController.ispressed)
                  ]),
              child: Center(
                child: Text(
                  buttontext,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 21,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
