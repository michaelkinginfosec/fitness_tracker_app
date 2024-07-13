// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:swipeable_button_view/swipeable_button_view.dart';

// class SwipeButton extends StatelessWidget {
//   final VoidCallback onFinish;
//   final VoidCallback onWaitingProcess;
//   final Color activeColor;
//   final Widget buttonLeftWidget;
//   final Widget buttonRightwidget;
//   final String buttonText;
//   final bool isFinished;
//   final TextStyle buttonTextStyle;

//   const SwipeButton({
//     super.key,
//     required this.onFinish,
//     required this.onWaitingProcess,
//     required this.activeColor,
//     required this.buttonLeftWidget,
//     required this.buttonRightwidget,
//     required this.buttonText,
//     required this.isFinished,
//     required this.buttonTextStyle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         SwipeableButtonView(
//           onFinish: onFinish,
//           onWaitingProcess: onWaitingProcess,
//           activeColor: activeColor,
//           buttonWidget: buttonLeftWidget,
//           buttonText: buttonText,
//           isFinished: isFinished,
//           buttontextstyle: buttonTextStyle,
//         ),
//         buttonRightwidget,
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class CustomSwipeableButton extends StatelessWidget {
  final Widget buttonRightWidget;
  final VoidCallback onFinish;
  final VoidCallback onWaitingProcess;
  final Color activeColor;
  final Widget buttonLeftWidget;
  final String buttonText;
  final bool isFinished;
  final TextStyle buttonTextStyle;

  const CustomSwipeableButton({
    Key? key,
    required this.buttonRightWidget,
    required this.onFinish,
    required this.onWaitingProcess,
    required this.activeColor,
    required this.buttonLeftWidget,
    required this.buttonText,
    required this.isFinished,
    required this.buttonTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buttonLeftWidget,
        Expanded(
          child: SwipeableButtonView(
            onFinish: onFinish,
            onWaitingProcess: onWaitingProcess,
            activeColor: activeColor,
            buttonWidget: Container(),
            buttonText: buttonText,
            isFinished: isFinished,
            buttontextstyle: buttonTextStyle,
          ),
        ),
        buttonRightWidget,
      ],
    );
  }
}
