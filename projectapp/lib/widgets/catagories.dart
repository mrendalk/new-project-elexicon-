import 'package:flutter/material.dart';
import 'package:projectapp/folders/productphoto.dart';

class catagories extends StatefulWidget {
  catagories({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<catagories> createState() => _catagoriesState();
}

class _catagoriesState extends State<catagories> {
  late bool isClicked = true;
  //var index = index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: !isClicked ? Colors.red : Colors.grey[300],
            borderRadius: BorderRadius.circular(3),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 4.0, bottom: 4.0, left: 10, right: 10),
            child: Text(
              listOfString[widget.index],
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        onTap: () {
          setState(() {
            isClicked ? isClicked = false : isClicked = true;
          });
        });
  }
}

class TypesOfFood extends StatefulWidget {
  TypesOfFood({Key? key, required this.index}) : super(key: key);
  var index;

  @override
  State<TypesOfFood> createState() => _TypesOfFoodState();
}

class _TypesOfFoodState extends State<TypesOfFood> {
  bool isClicked = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          margin: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: !isClicked ? Colors.red : Colors.grey[300],
            borderRadius: BorderRadius.circular(3),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 4.0, bottom: 4.0, left: 10, right: 10),
            child: Text(
              typeOfFood[widget.index],
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        onTap: () {
          setState(() {
            isClicked ? isClicked = false : isClicked = true;
          });
        });
  }
}
