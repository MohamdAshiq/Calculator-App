import 'package:calculator_app/Constants/constants.dart';
import 'package:calculator_app/Provider/button_controller.dart';
import 'package:calculator_app/Provider/equation_text_controller.dart';
import 'package:calculator_app/Screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 780),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiProvider(
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
      ),
    );
  }
}
