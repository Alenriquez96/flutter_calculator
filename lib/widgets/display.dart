import 'package:flutter/material.dart';

class myDisplay extends StatelessWidget {
  final Function handleShowDisplayValue;

  const myDisplay({super.key, required this.handleShowDisplayValue});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  handleShowDisplayValue(),
                  style: const TextStyle(fontSize: 40, color: Colors.white),
                  textAlign: TextAlign.end,
                ))
          ],
        ));
  }
}
