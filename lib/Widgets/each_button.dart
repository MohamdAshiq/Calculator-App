
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class EachButtonWidget extends StatelessWidget {
  const EachButtonWidget({super.key, required this.buttontext});

  final String buttontext;


  @override
  Widget build(BuildContext context) {
    double blur = 1.5;
    Offset distance = const Offset(1.5, 1.5);
    return GestureDetector(
      onTap: () {},
      child: Listener(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 120),
              height: 65,
              width: 75,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 28, 27, 31),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: blur,
                        offset: -distance,
                        color: const Color.fromARGB(255, 56, 56, 56),
                       ),
                    BoxShadow(
                        blurRadius: blur,
                        offset: distance,
                        color: const Color.fromARGB(66, 75, 75, 75),
                       )
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
    );
  }
}
