import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'dimensions.dart';

class ButtonIcon extends StatelessWidget {
  final Color color;
  final IconData icon;
  final dynamic onpressed;
  const ButtonIcon(
      {super.key,
      required this.color,
      required this.icon,
      required this.onpressed});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      height: Dimensions.height50,
      width: Dimensions.width50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppTheme.darkerText.withOpacity(0.1),
      ),
      child: IconButton(
        onPressed: onpressed,
        icon: Icon(
          icon,
          size: Dimensions.iconSize30,
          color: color,
        ),
      ),
    );
  }
}
