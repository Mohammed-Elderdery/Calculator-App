// ignore_for_file: sized_box_for_whitespace

import 'package:calculator0_1_1/core/conistant.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Text(
          "Flutter Calculator",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonNumber(numberQ: "AC", color: fstColor),
              ButtonNumber(numberQ: "C", color: fstColor),
              ButtonNumber(numberQ: "<", color: secColor),
              ButtonNumber(numberQ: "*", color: secColor),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonNumber(numberQ: "3", color: fstColor),
              ButtonNumber(numberQ: "2", color: fstColor),
              ButtonNumber(numberQ: "1", color: fstColor),
              ButtonNumber(numberQ: "-", color: secColor),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonNumber(numberQ: "6", color: fstColor),
              ButtonNumber(numberQ: "5", color: fstColor),
              ButtonNumber(numberQ: "4", color: fstColor),
              ButtonNumber(numberQ: "+", color: secColor),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonNumber(numberQ: "9", color: fstColor),
              ButtonNumber(numberQ: "8", color: fstColor),
              ButtonNumber(numberQ: "7", color: fstColor),
              ButtonNumber(numberQ: "/", color: secColor),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonNumber(numberQ: "+/-", color: fstColor),
              ButtonNumber(numberQ: "0", color: fstColor),
              ButtonNumber(numberQ: "00", color: fstColor),
              ButtonNumber(
                numberQ: "=",
                color: secColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonNumber extends StatelessWidget {
  final Color color;
  final String numberQ;
  const ButtonNumber({
    super.key,
    required this.numberQ,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Center(
          child: Text(
            numberQ,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
