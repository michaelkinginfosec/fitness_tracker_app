import 'package:fitness_tracker_app/components/custom_swipeable_view.dart';
import 'package:fitness_tracker_app/views/confirmation_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        // child: Center(
        //   child: CustomSwipeableButton(
        //     buttonText: 'Swipe to pay',
        //     onWaitingProcess: () {
        //       Future.delayed(
        //         const Duration(seconds: 2),
        //         () => setState(() => isFinished = true),
        //       );
        //     },
        //     isFinished: isFinished,
        //     onFinish: () async {
        //       Navigator.push(
        //         context,
        //         PageTransition(
        //           child: const ConfirmationPage(),
        //           type: PageTransitionType.fade,
        //         ),
        //       );
        //     },
        //     activeColor: Colors.green,
        //     buttonRightwidget: const Icon(Icons.minimize),
        //     buttonLeftWidget: const Icon(Icons.add),
        //     buttonTextStyle: const TextStyle(
        //       fontSize: 20,
        //     ),
        //   ),
        // ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SwipeableButtonView(
              buttonText: "Swipe to pay",
              activeColor: Colors.green,
              onFinish: () {
                Navigator.push(
                  context,
                  PageTransition(
                    child: const ConfirmationPage(),
                    type: PageTransitionType.fade,
                  ),
                );
              },
              onWaitingProcess: () {
                Future.delayed(
                  const Duration(seconds: 2),
                  () => setState(
                    () => isFinished = true,
                  ),
                );
              },
              buttonWidget: Icon(
                Icons.add,
              ),
            ),
            // Icon(
            //   Icons.minimize_outlined,
            //   color: Colors.red,
            // )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:fitness_tracker_app/components/custom_swipeable_view.dart';
// import 'package:fitness_tracker_app/views/confirmation_page.dart';

// class AnimationPage extends StatefulWidget {
//   const AnimationPage({Key? key}) : super(key: key);

//   @override
//   State<AnimationPage> createState() => _AnimationPageState();
// }

// class _AnimationPageState extends State<AnimationPage> {
//   bool isFinished = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(50),
//         child: Center(
//           child: CustomSwipeableButton(
//             buttonText: 'Swipe to pay',
//             onWaitingProcess: () {
//               Future.delayed(
//                 const Duration(seconds: 2),
//                 () => setState(() => isFinished = true),
//               );
//             },
//             isFinished: isFinished,
//             onFinish: () async {
//               Navigator.push(
//                 context,
//                 PageTransition(
//                   child: const ConfirmationPage(),
//                   type: PageTransitionType.fade,
//                 ),
//               );
//             },
//             activeColor: Colors.green,
//             buttonRightWidget: const Icon(Icons.check),
//             buttonLeftWidget: const Icon(Icons.arrow_forward_ios_rounded),
//             buttonTextStyle: const TextStyle(
//               fontSize: 20,
//             ),
//             buttonRightwidget: Icon(Icons.arrow_forward_ios_rounded),
//           ),
//         ),
//       ),
//     );
//   }
// }
