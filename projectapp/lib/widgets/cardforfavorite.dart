
import 'package:flutter/material.dart';
import 'package:projectapp/folders/productphoto.dart';
import 'package:projectapp/widgets/circularavatar.dart';

class CardForFavorite extends StatelessWidget {
  CardForFavorite({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            height: 200,
            width: 180,
            margin: const EdgeInsets.only(
                top: 8.0, left: 8.0, bottom: 10, right: 8),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(
                      0,
                      2,
                    ),
                    spreadRadius: 1.0,
                    blurRadius: 10), //BoxShadow
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    height: 100,
                    width: 120,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        foodList[index],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Bacon Burger",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("yahoo comida",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.grey)),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text("\$ 150",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12)),
                      const Text(
                        "40% off",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(1, 1),
                                  spreadRadius: 1,
                                  color: Colors.grey,
                                  blurRadius: 3,
                                )
                              ]),
                          //height: 15,
                          //width: 45,
                          child: const Center(
                              child: Text(
                            "ADD",
                            style: TextStyle(color: Colors.green, fontSize: 12),
                          )),
                        ),
                        onTap: () {
                          print("add button clicked");
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 12,
          right: 12,
          child: CircleAvatar(backgroundColor: Colors.grey,  radius: 14, child: Icon(Icons.delete_rounded, size: 15,color: Colors.white,)),
        ),
      ],
    );
  }
}
