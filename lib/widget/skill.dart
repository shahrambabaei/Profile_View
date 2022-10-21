import 'package:flutter/material.dart';
import 'package:profile/configs/color_theme.dart';

class Skill extends StatelessWidget {
  const Skill({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.isActive,
    required this.onClick,
    required this.shadowColor,
  }) : super(key: key);
  final String title;
  final String imagePath;
  final bool isActive;
  final GestureTapCallback onClick;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onClick,
      child: Container(
        height: 100,
        width: 100,
        decoration: isActive
            ? BoxDecoration(
                color: ColorTheme.surfaceColor,
                borderRadius: BorderRadius.circular(12))
            : null,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              decoration: isActive
                  ? BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: shadowColor.withOpacity(.5), blurRadius: 20)
                    ])
                  : null,
              child: Image.asset(imagePath, width: 40, height: 40)),
          const SizedBox(height: 8),
          Text(title)
        ]),
      ),
    );
  }
}
