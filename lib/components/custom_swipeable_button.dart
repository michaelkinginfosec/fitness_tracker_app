import 'package:flutter/material.dart';

class SwipeWidget extends StatefulWidget {
  final VoidCallback onSwipeComplete;

  const SwipeWidget({required this.onSwipeComplete});

  @override
  _SwipeWidgetState createState() => _SwipeWidgetState();
}

class _SwipeWidgetState extends State<SwipeWidget> {
  double _dragPosition = 0.0;
  bool _isComplete = false;

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      _dragPosition += details.delta.dx;
      if (_dragPosition < 0) _dragPosition = 0;
      if (_dragPosition > 240)
        _dragPosition = 240; // Adjust swipe width accordingly
    });
  }

  void _onPanEnd(DragEndDetails details) {
    if (_dragPosition > 200) {
      // Adjust threshold to trigger action
      setState(() {
        _isComplete = true;
        _dragPosition = 240;
        widget.onSwipeComplete();
      });
    } else {
      setState(() {
        _dragPosition = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Stack(
        children: [
          Container(
            width: 300,
            height: 60,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 42, 40, 40),
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Swipe to Action ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 10,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: _dragPosition,
            child: GestureDetector(
              onPanUpdate: _onPanUpdate,
              onPanEnd: _onPanEnd,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 91, 112, 118),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
