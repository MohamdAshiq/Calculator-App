import 'package:calculator_app/Constants/constants.dart';
import 'package:calculator_app/Provider/button_controller.dart';
import 'package:calculator_app/Provider/equation_text_controller.dart';
import 'package:calculator_app/Screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => EquationTextController(),
        ),
        ChangeNotifierProvider(
          create: (context) => ButtonController(),
        ),
      ],
      child: MaterialApp(
        title: Constants.appname,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true),
        home: const HomePage(),
      ),
    );
  }
}
