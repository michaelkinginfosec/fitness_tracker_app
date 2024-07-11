import 'package:flutter/material.dart';

class CustomAppBAr extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final VoidCallback backButton;
  final VoidCallback? profileButon;
  final VoidCallback? calenderIcon;

  const CustomAppBAr({
    super.key,
    this.title,
    required this.backButton,
    required this.profileButon,
    required this.calenderIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: MaterialButton(
              onPressed: backButton,
              child: const Icon(Icons.arrow_back),
            ),
          ),
          Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: MaterialButton(
                  onPressed: backButton,
                  child: const Icon(Icons.calendar_month),
                ),
              ),
              Container(
                width: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/profile.jpeg',
                        ),
                        fit: BoxFit.cover)),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
