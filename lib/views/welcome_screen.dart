import 'package:fitness_tracker_app/components/categories_container.dart';
import 'package:fitness_tracker_app/components/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      body: Padding(
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
              height: 20,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 30,
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                    ),
                    Positioned(
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.red,
                      ),
                    ),
                    Positioned(
                      left: -20,
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
