import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projectapp/widgets/tabwidgets.dart';

class tabview extends StatefulWidget {
  tabview({Key? key}) : super(key: key);

  @override
  State<tabview> createState() => _tabviewState();
}

class _tabviewState extends State<tabview> with SingleTickerProviderStateMixin {
  late TabController controller;
  int _index = 0;

  @override
  void initState() {
    controller = TabController(
        length: tabWidgets.length, vsync: this, initialIndex: _index);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Stack(children: [
          TabBarView(children: [
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(children: [
                  const Expanded(
                    flex: 3,
                    child: Image(
                      image: AssetImage("assets/images/carton.png"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Center(
                      child: Text(
                        "Fresh Foods",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: Text(
                        "In Particular, the garbeled words of",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "bear an unremarkable",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: TabPageSelector(),
                  ),
                  Container(
                    color: Colors.white,
                    height: 40,
                    margin: const EdgeInsets.all(30),
                    child: const Center(
                        child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          decoration: TextDecoration.none),
                    )),
                  ),
                  const Center(
                    child: Text(
                      "skip",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  )
                ]),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(children: [
                  const Expanded(
                    flex: 3,
                    child: Image(
                      image: AssetImage("assets/images/burger1.png"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Center(
                      child: Text(
                        "Fresh Foods",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: Text(
                        "In Particular, the garbeled words of",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "bear an unremarkable",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: TabPageSelector(),
                  ),
                  Container(
                    color: Colors.white,
                    height: 40,
                    margin: const EdgeInsets.all(30),
                    child: const Center(
                        child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          decoration: TextDecoration.none),
                    )),
                  ),
                  const Center(
                    child: Text(
                      "skip",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  )
                ]),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(children: [
                  const Expanded(
                    //flex: 3,
                    child: Image(
                      image: AssetImage("assets/images/eating.png"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Center(
                      child: Text(
                        "Fresh Foods",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: Text(
                        "In Particular, the garbeled words of",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "bear an unremarkable",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: TabPageSelector(),
                  ),
                  GestureDetector(
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      margin: const EdgeInsets.all(30),
                      child: const Center(
                          child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            decoration: TextDecoration.none),
                      )),
                    ),
                    onTap: () {
                      print("next");
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                  Center(
                    child: TextButton(
                      child: Text(
                        "skip",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 14,
                            decoration: TextDecoration.none),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                        print("object");
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  )
                ]),
              ),
            ),
          ]),
          Expanded(
            child: Positioned(
              bottom: 110,
              child: GestureDetector(
                child: Container(
                  width: 300,
                  color: Colors.red,
                  height: 40,
                  margin: const EdgeInsets.all(30),
                  child: const Center(
                      child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        decoration: TextDecoration.none),
                  )),
                ),
                onTap: () {
                  (_index != tabWidgets.length - 1) ? _index++ : _index = 0;
                },
              ),
            ),
          ),
        ]));
  }
}
