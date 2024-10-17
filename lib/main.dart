import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
void main() => runApp (const BmiCalculator());

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121325),
        appBarTheme: const AppBarTheme(color: Color(0xFF121325),),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const InputPage(),

    );
  }
}




