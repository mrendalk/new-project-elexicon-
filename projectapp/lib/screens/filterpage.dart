import 'package:flutter/material.dart';
import 'package:projectapp/folders/productphoto.dart';

import 'package:projectapp/widgets/catagories.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  late bool isClicked = true;
  var selectedRange = RangeValues(1000, 2000);
  var start, end;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black)),
        backgroundColor: Colors.white,
        title: Text("Filter",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black)),
        elevation: 0,
        actions: [
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.only(top: 16, left: 10),
              child: Stack(children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/checkout');
                  },
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                  ),
                ),
                const Positioned(
                  right: 2,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.red,
                    child: Text("6",
                        style: TextStyle(color: Colors.white, fontSize: 8)),
                  ),
                )
              ]),
            ),
            onTap: () {
              print("cart button");
            },
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 12,
                bottom: 10,
                right: MediaQuery.of(context).size.width - 140,
              ),
              child: Text(
                "Catagories",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: [
                for (int i = 0; i < listOfString.length; i++)
                  catagories(index: i)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: 12,
                bottom: 10,
                right: MediaQuery.of(context).size.width - 150,
              ),
              child: Text(
                "Types of food",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: [
                for (int i = 0; i < typeOfFood.length; i++)
                  TypesOfFood(index: i)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 40,
                left: 12,
                bottom: 10,
                right: MediaQuery.of(context).size.width - 130,
              ),
              child: Text(
                "Price range",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            RangeSlider(
                values: selectedRange,
                onChangeStart: (value) {
                  start = value.start;
                },
                onChangeEnd: (value) {
                  end = value.end;
                },
                min: 0,
                max: 3000,
                divisions: 1000,
                inactiveColor: Colors.grey,
                activeColor: Color.fromARGB(255, 188, 17, 5),
                onChanged: (RangeValues newRange) {
                  setState(() {
                    selectedRange = newRange;
                  });
                }),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 213, 205, 205))),
                  child: Center(
                      child: Text(
                    "\$ " + "$start",
                    style: TextStyle(fontSize: 16),
                  )),
                ),
                Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 213, 205, 205))),
                  child: Center(
                      child: Text(
                    "\$ " + "$end",
                    style: TextStyle(fontSize: 16),
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(255, 188, 17, 5)),
                  child: Center(
                      child: Text(
                    "Apply filters",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/');
                },
              ),
            ),
            Container(
              height: 35,
              child: Center(
                  child: Text(
                "Clear filters",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )),
            ),
          ])),
    );
  }
}
