import 'package:flutter/material.dart';

class CategoryContainer extends StatefulWidget {
  // final Color color;

  final String text;
  const CategoryContainer({
    super.key,
    // required this.color,
    required this.text,
  });

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  bool isSeleted = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSeleted = !isSeleted;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isSeleted ? Colors.black : Colors.white,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              widget.text,
              style: TextStyle(
                  color: isSeleted ? Colors.white : Colors.black, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
