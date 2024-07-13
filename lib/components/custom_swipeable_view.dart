// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:swipeable_button_view/swipeable_button_view.dart';

class CustomSwipeableButton extends StatelessWidget {
  final Widget buttonRightwidget;
  final VoidCallback onFinish;
  final VoidCallback onWaitingProcess;
  final Color activeColor;
  final Widget buttonLeftWidget;
  final String buttonText;
  final bool isFinished;
  final TextStyle buttonTextStyle;
  const CustomSwipeableButton({
    super.key,
    required this.buttonRightwidget,
    required this.onFinish,
    required this.onWaitingProcess,
    required this.activeColor,
    required this.buttonLeftWidget,
    required this.buttonText,
    required this.isFinished,
    required this.buttonTextStyle,
    required Icon buttonRightWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SwipeableButtonView(
            onFinish: onFinish,
            onWaitingProcess: onWaitingProcess,
            activeColor: activeColor,
            buttonWidget: buttonLeftWidget,
            buttonText: buttonText,
            isFinished: isFinished,
            buttontextstyle: buttonTextStyle,
          ),
          buttonRightwidget
        ],
      ),
    );
  }
}
