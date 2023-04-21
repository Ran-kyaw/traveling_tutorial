
import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'dimensions.dart';

class StaticWidget {
  static buttomWidget(text, {onPressed, margin, width, height}) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      decoration: BoxDecoration(
          color: AppTheme.darkerText.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10),
          backgroundBlendMode: BlendMode.colorBurn),
      child: TextButton(
        onPressed: onPressed,
        child: Align(
          child: FittedBox(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: Dimensions.font16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  static viewText(text, {onpressed, color}) {
    return TextButton(
        onPressed: onpressed,
        child: Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: Dimensions.font18,
          ),
        ));
  }

  static bigText(text, {color}) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: Dimensions.font23,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static titleText(text, {color}) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: Dimensions.font16, color: color),
    );
  }

  static smallText(text, {overflow, width}) {
    bool color = true;
    return Container(
      padding: const EdgeInsets.all(0),
      width: width,
      child: Text(
        text,
        overflow: overflow,
        style: TextStyle(
          color: AppTheme.darkerText.withOpacity(0.3),
          fontSize: Dimensions.font14,
        ),
      ),
    );
  }

  static welcomeInfo() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Flexible(
        child: Text(
          'Arakan News brings you the world’s best journalism, all in one place.',
          style: TextStyle(
            color: AppTheme.darkerText.withOpacity(0.6),
            fontSize: Dimensions.font22,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.9,
            wordSpacing: 0.8,
          ),
        ),
      ),
    );
  }
}
