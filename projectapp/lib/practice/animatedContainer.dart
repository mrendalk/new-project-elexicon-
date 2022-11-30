import 'package:flutter/material.dart';

class AnimatedContainerWidget1 extends StatefulWidget {
  const AnimatedContainerWidget1({Key? key}) : super(key: key);

  final animatedContainer = 'animatedContainer';

  @override
  State<AnimatedContainerWidget1> createState() =>
      _AnimatedContainerWidget1State();
}

class _AnimatedContainerWidget1State extends State<AnimatedContainerWidget1> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 100),
            curve: Curves.easeInCirc,
            height: isSelected ? 100 : 200,
            width: isSelected ? 200 : 100,
            decoration: BoxDecoration(
              color: isSelected ? Colors.green : Colors.red,
            )),
      ),
    ));
  }
}
