import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tradeforcetn/utils/colors.dart';

class LinearGradientMask extends StatelessWidget {
 LinearGradientMask({ required this.child});
  final Widget child;


  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return  LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          colors: <Color>[
            AppColors.signinButtonFirstColor,
            AppColors.signinButtonSecondColor

          ],
        ).createShader(bounds);
      },
      child: child,
    );
  }
}