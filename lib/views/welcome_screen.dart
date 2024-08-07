import 'package:fitness_tracker_app/components/categories_container.dart';
import 'package:fitness_tracker_app/components/custom_app_bar.dart';
import 'package:fitness_tracker_app/components/custom_swipeable_button.dart';

import 'package:fitness_tracker_app/components/stack.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBAr(
        backButton: () {
          Navigator.pushNamed(context, '/assumedScreen');
        },
        profileButon: () {},
        calenderIcon: () {},
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            color: Colors.grey.shade100,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Fitnes \nTracking Device',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategoryContainer(
                        text: "Connection",
                      ),
                      CategoryContainer(
                        text: "Statistic",
                      ),
                      CategoryContainer(
                        text: "Shop",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          StackedContainers(),
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SwipeWidget(onSwipeComplete: () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
