import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    required this.controller,
    required this.totalIndicator,
    this.color,
    Key? key,
  }) : super(key: key);

  final Rx<int> controller;
  final Color? color;
  final int totalIndicator;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          totalIndicator,
          (index) => _dot(
            index == controller.value,
            color ?? Theme.of(context).primaryColor,
          ),
        ).toList(),
      ),
    );
  }

  Widget _dot(bool isActive, Color color) {
    return AnimatedContainer(
      margin: const EdgeInsets.all(5),
      duration: Duration(milliseconds: 200),
      height: 10,
      width: isActive ? 25 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        border: Border.all(
          color: Colors.white,
          width: .5,
        ),
      ),
    );
  }
}
