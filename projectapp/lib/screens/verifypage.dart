import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class VerifyPage extends StatefulWidget {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  State<VerifyPage> createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Verify Address",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: [
        Container(
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            //height: 350,
            decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    offset: Offset(0, 0),
                    color: Color.fromARGB(255, 234, 228, 228),
                    blurStyle: BlurStyle.normal,
                    spreadRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Container(
              margin: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 5),
                      //height: 120,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      //width: 200,
                      //color: Colors.amber,
                      child: Stack(
                        children: [
                          const SizedBox(
                            height: 36,
                          ),
                          Column(children: [
                            Text("Payable Amount",
                                style: TextStyle(fontSize: 18)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("\$ 450.00",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 36,
                            ),
                          ]),
                        ],
                      )),
                  ///////////////////
                  Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 5),
                      //height: 120,
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
                      //width: 200,
                      //color: Colors.amber,
                      child: Stack(
                        children: [
                          Column(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 12),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Delivery Address",
                                    style: TextStyle(fontSize: 16)),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 6, left: 12.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Mekannis, Kolfe Keranio k/k",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 12.0, bottom: 20),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Ethiopia, Addis Ababa",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                              ),
                            ),
                          ]),
                          Positioned(
                            right: 20,
                            top: 35,
                            child: CircleAvatar(
                                radius: 11,
                                backgroundColor: Colors.grey[300],
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                  size: 16,
                                )),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 5),
                      //height: 120,
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
                      //width: 200,
                      //color: Colors.amber,
                      child: Stack(
                        children: [
                          Column(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 12),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Contact Number",
                                    style: TextStyle(fontSize: 16)),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 6, left: 12.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("+251947722518",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                          ]),
                          Positioned(
                            right: 20,
                            top: 20,
                            child: CircleAvatar(
                                radius: 11,
                                backgroundColor: Colors.grey[300],
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                  size: 16,
                                )),
                          ),
                        ],
                      )),
                ],
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        Spacer(),
        GestureDetector(
            child: Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 20,
                ),
                height: 40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 198, 23, 10),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: const Center(
                    child: Text(
                  "Place Order",
                  style: TextStyle(color: Colors.white),
                ))),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            }),
        SizedBox(
          height: 30,
        )
      ]),
    );
  }
}
