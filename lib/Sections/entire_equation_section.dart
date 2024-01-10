import 'package:calculator_app/Provider/equation_text_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        height: 50,
        width: double.infinity,
        child: Consumer<EquationTextController>(
          builder: (context, value, child) => ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            reverse: true,
            children: [
              Text(
                value.equation,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  fontSize: 35,
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
