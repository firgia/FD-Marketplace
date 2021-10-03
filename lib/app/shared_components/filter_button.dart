import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:marketplace/app/shared_components/custom_icon_button.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({required this.onPressed, this.size = 60, Key? key})
      : super(key: key);

  final Function() onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: Icon(
        FontAwesomeIcons.slidersH,
        color: Theme.of(context).iconTheme.color,
      ),
      onPressed: onPressed,
      size: size,
      tooltip: "Filter",
    );
  }
}
