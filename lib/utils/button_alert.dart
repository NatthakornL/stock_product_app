import 'package:flutter/material.dart';

class ButtonAlert extends StatelessWidget {
  const ButtonAlert({
    Key? key,
    this.onTap,
    required this.child,
    required this.backgroundColor,
    this.borderColor,
    this.height = 120,
    this.width = 300,

  }) : super(key: key);

  final VoidCallback? onTap;
  final Widget child;
  final Color backgroundColor;
  final Color? borderColor;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50),
          border: borderColor != null
              ? Border.all(color: borderColor!)
              : const Border(),
        ),
        child: child,
      ),
    );
  }
}
