
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class EquationTextController extends ChangeNotifier {
  String _equation = "";
  bool isnewterm = false;

  
   
  static  ValueNotifier<String> answer=ValueNotifier("0");
  String get equation => _equation;

  void buttonFunctions(String buttonText) {
    if (_isDigitButton(buttonText)) {
      _equation += buttonText;
    } else if (buttonText == ".") {
      _handleDecimalButton();
    } else if (buttonText == "00") {
      _equation.isEmpty ? _equation = "" : _equation += "00";
    } else if (buttonText == "0") {
      _handleZeroButton();
    } else if (buttonText == "C") {
      _handleClearButton();
    } else if (buttonText == "DEL") {
      _handleDeleteButton();
    } else if (_isOperatorButton(buttonText)) {
      isnewterm = true;
      _handleOperatorButton(buttonText);
    } else if (buttonText == "=" || buttonText == "ANS") {
      equalPressed(equation, (lastCharacter) => false);
    }

    notifyListeners();
  }

  bool _isDigitButton(String buttonText) {
    final charCode = buttonText.codeUnitAt(0);
    return charCode >= "0".codeUnitAt(0) && charCode <= "9".codeUnitAt(0);
  }

  bool _isOperatorButton(String buttonText) {
    return buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "*" ||
        buttonText == "/";
  }

  void _handleDecimalButton() {
    if (_equation.isEmpty) {
      _equation = "0.";
    } else if (!_equation.contains(".")) {
      _equation = isnewterm ? "$_equation." : "$_equation.";
    }
  }

  void _handleZeroButton() {
    if (_equation.isEmpty || _equation == "0") {
      _equation = "0";
    } else {
      _equation += "0";
    }
  }

  void _handleClearButton() {
    _equation = "";
    answer.value="";
  }

  void _handleDeleteButton() {
    if (_equation.isNotEmpty) {
      _equation = _equation.substring(0, _equation.length - 1);
    }
  }

  void _handleOperatorButton(String buttonText) {
    if (_equation.isEmpty) {
      if (buttonText == '-') {
        _equation = "-";
      }
    } else {
      if (_equation == "-") {
        _equation = "-";
      } else {
        final lastCharacter = _equation.substring(_equation.length - 1);
        if (_isOperatorButton(lastCharacter)) {
          _equation = _equation.substring(0, _equation.length - 1) + buttonText;
        } else {
          _equation += buttonText;
        }
      }
    }
  }

  void equalPressed(
      String equation, bool Function(String lastCharacter) isOperatorButton) {
        
    try {
      if (equation.isEmpty) {
        answer.value="";
      } else if (equation == "-") {
        // Handle special case when equation is just a single minus sign
      } else {
        final lastCharacter = equation.substring(equation.length - 1);
        if (isOperatorButton(lastCharacter)) {
          answer.value="Syntax Error";
        } else {
          final Expression exp = Parser().parse(equation);
          final ContextModel cm = ContextModel();
          final num result = exp.evaluate(EvaluationType.REAL, cm);

          answer.value=result.toString();
        }
   
      }
      
    } catch (e) {
     answer.value="Syntax Error";
    }
  }
}
