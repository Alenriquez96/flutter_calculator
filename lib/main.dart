import 'package:flutter/material.dart';
import "./widgets/display.dart";
import "./widgets/keyboard.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
          primarySwatch: Colors.brown, scaffoldBackgroundColor: Colors.grey),
      home: const MyHomePage(title: 'Calculator demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

ButtonStyle buttonDecoration(bgColor, borderColor, borderWidth) {
  return TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
        side: BorderSide(color: borderColor, width: borderWidth),
      ),
      minimumSize: const Size(100, 70),
      backgroundColor: bgColor,
      foregroundColor: Colors.black);
}

TextStyle textButtonDecoration() {
  return const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20);
}

class _MyHomePageState extends State<MyHomePage> {
  String _initialDisplayValue = "0";
  String _newDisplayValue = "";
  String _operator = "";

  void handleNumberClick(String val) {
    setState(() {
      if (_operator.isEmpty) {
        if (_initialDisplayValue == "0") {
          _initialDisplayValue = val;
        } else {
          _initialDisplayValue = _initialDisplayValue + val;
        }
      } else {
        if (_newDisplayValue == "") {
          _newDisplayValue = val;
        } else {
          _newDisplayValue = _newDisplayValue + val;
        }
      }
    });
  }

  String handleShowDisplayValue() {
    return _newDisplayValue.isEmpty ? _initialDisplayValue : _newDisplayValue;
  }

  calculate() {
    switch (_operator) {
      case "÷":
        return int.parse(_initialDisplayValue) / int.parse(_newDisplayValue);
      case "x":
        return int.parse(_initialDisplayValue) * int.parse(_newDisplayValue);
      case "-":
        return int.parse(_initialDisplayValue) - int.parse(_newDisplayValue);
      case "+":
        return int.parse(_initialDisplayValue) + int.parse(_newDisplayValue);
      default:
        return;
    }
  }

  void handleOperatorClick(String operator) {
    setState(() {
      _operator = operator;
    });
  }

  void handleClearClick() {
    setState(() {
      _initialDisplayValue = "0";
      _newDisplayValue = "";
    });
  }

  void handleOpposite() {
    setState(() {
      _initialDisplayValue = (int.parse(_initialDisplayValue) * -1).toString();
    });
  }

  void handlePercentage() {
    setState(() {
      _initialDisplayValue = (int.parse(_initialDisplayValue) / 100).toString();
    });
  }

  void handleEqualClick() {
    setState(() {
      _initialDisplayValue = calculate().toString();
      _newDisplayValue = "";
      _operator = "";
    });
  }

  Widget _body() {
    Widget display = myDisplay(handleShowDisplayValue: handleShowDisplayValue);

    Widget keyboard = MyKeyboard(
        handleClearClick: handleClearClick,
        handleNumberClick: handleNumberClick,
        handleOperatorClick: handleOperatorClick,
        handleOpposite: handleOpposite,
        handlePercentage: handlePercentage,
        buttonDecoration: buttonDecoration,
        handleEqualClick: handleEqualClick,
        valueContainsComa: _initialDisplayValue.contains(","),
        textButtonDecoration: textButtonDecoration,
        displayValue: _initialDisplayValue == "0" ? "AC" : "C");

    Widget body = Center(
        child: Column(
      children: [display, keyboard],
    ));

    return SafeArea(child: body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body());
  }
}
