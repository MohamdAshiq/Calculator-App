import 'package:calculator_app/Constants/constants.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(Constants.appname,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      elevation: 2,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
