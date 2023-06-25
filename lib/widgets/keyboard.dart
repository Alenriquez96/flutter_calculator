import 'package:flutter/material.dart';

class MyKeyboard extends StatelessWidget {
  final VoidCallback handleClearClick;
  final VoidCallback handleOpposite;
  final VoidCallback handlePercentage;
  final handleNumberClick;
  final handleOperatorClick;
  final buttonDecoration;
  final textButtonDecoration;
  final VoidCallback handleEqualClick;
  final String displayValue;
  final valueContainsComa;

  const MyKeyboard(
      {super.key,
      required this.handleClearClick,
      required this.handleNumberClick,
      required this.handleOperatorClick,
      required this.handleOpposite,
      required this.handlePercentage,
      required this.buttonDecoration,
      required this.handleEqualClick,
      required this.valueContainsComa,
      required this.textButtonDecoration,
      required this.displayValue});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Card(
            margin: const EdgeInsets.all(8),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: TextButton(
                            onPressed: handleClearClick,
                            style: buttonDecoration(
                                const Color.fromARGB(255, 40, 39, 39),
                                Colors.grey,
                                1),
                            child: Text(
                              displayValue,
                              style: textButtonDecoration(),
                            ))),
                    Expanded(
                        child: TextButton(
                            onPressed: handleOpposite,
                            style: buttonDecoration(
                                const Color.fromARGB(255, 40, 39, 39),
                                Colors.grey,
                                1),
                            child: Text("+/-", style: textButtonDecoration()))),
                    Expanded(
                        child: TextButton(
                            onPressed: handlePercentage,
                            style: buttonDecoration(
                                const Color.fromARGB(255, 40, 39, 39),
                                Colors.grey,
                                1),
                            child: Text("%", style: textButtonDecoration()))),
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleOperatorClick("÷"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 218, 137, 51),
                                Colors.grey,
                                1),
                            child: Text(
                              "÷",
                              style: textButtonDecoration(),
                            ))),
                  ],
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: TextButton(
                      onPressed: () => handleNumberClick("7"),
                      style: buttonDecoration(
                          const Color.fromARGB(255, 121, 118, 118),
                          Colors.grey,
                          1),
                      child: Text(
                        "7",
                        style: textButtonDecoration(),
                      ),
                    )),
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleNumberClick("8"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 121, 118, 118),
                                Colors.grey,
                                1),
                            child: Text(
                              "8",
                              style: textButtonDecoration(),
                            ))),
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleNumberClick("9"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 121, 118, 118),
                                Colors.grey,
                                1),
                            child: Text(
                              "9",
                              style: textButtonDecoration(),
                            ))),
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleOperatorClick("x"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 218, 137, 51),
                                Colors.grey,
                                1),
                            child: Text(
                              "x",
                              style: textButtonDecoration(),
                            ))),
                  ],
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleNumberClick("4"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 121, 118, 118),
                                Colors.grey,
                                1),
                            child: Text(
                              "4",
                              style: textButtonDecoration(),
                            ))),
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleNumberClick("5"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 121, 118, 118),
                                Colors.grey,
                                1),
                            child: Text(
                              "5",
                              style: textButtonDecoration(),
                            ))),
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleNumberClick("6"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 121, 118, 118),
                                Colors.grey,
                                1),
                            child: Text(
                              "6",
                              style: textButtonDecoration(),
                            ))),
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleOperatorClick("-"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 218, 137, 51),
                                Colors.grey,
                                1),
                            child: Text(
                              "-",
                              style: textButtonDecoration(),
                            ))),
                  ],
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleNumberClick("1"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 121, 118, 118),
                                Colors.grey,
                                1),
                            child: Text(
                              "1",
                              style: textButtonDecoration(),
                            ))),
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleNumberClick("2"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 121, 118, 118),
                                Colors.grey,
                                1),
                            child: Text(
                              "2",
                              style: textButtonDecoration(),
                            ))),
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleNumberClick("3"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 121, 118, 118),
                                Colors.grey,
                                1),
                            child: Text(
                              "3",
                              style: textButtonDecoration(),
                            ))),
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleOperatorClick("+"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 218, 137, 51),
                                Colors.grey,
                                1),
                            child: Text(
                              "+",
                              style: textButtonDecoration(),
                            ))),
                  ],
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: TextButton(
                            onPressed: () => handleNumberClick("0"),
                            style: buttonDecoration(
                                const Color.fromARGB(255, 121, 118, 118),
                                Colors.grey,
                                1),
                            child: Text(
                              "0",
                              style: textButtonDecoration(),
                            ))),
                    Expanded(
                        child: TextButton(
                            onPressed: () =>
                                {if (valueContainsComa) handleNumberClick(",")},
                            style: buttonDecoration(
                                const Color.fromARGB(255, 121, 118, 118),
                                Colors.grey,
                                1),
                            child: Text(
                              ",",
                              style: textButtonDecoration(),
                            ))),
                    Expanded(
                        child: TextButton(
                            onPressed: handleEqualClick,
                            style: buttonDecoration(
                                const Color.fromARGB(255, 218, 137, 51),
                                Colors.grey,
                                1),
                            child: Text(
                              "=",
                              style: textButtonDecoration(),
                            )))
                  ],
                ))
              ],
            )));
  }
}
