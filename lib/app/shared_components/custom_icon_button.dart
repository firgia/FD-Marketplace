import 'package:flutter/material.dart';
import 'package:marketplace/app/constans/app_constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.icon,
    required this.onPressed,
    this.color,
    this.tooltip,
    this.size = 30,
    this.borderRadius = kBorderRadius,
    Key? key,
  }) : super(key: key);

  final Function() onPressed;
  final double size;
  final Color? color;
  final double borderRadius;

  final Icon icon;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Material(
          color: color ?? Theme.of(context).inputDecorationTheme.fillColor,
          child: IconButton(
            icon: icon,
            onPressed: onPressed,
            tooltip: tooltip,
            iconSize: size * .4,
          ),
        ),
      ),
    );
  }
}
