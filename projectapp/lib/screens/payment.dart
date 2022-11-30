import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projectapp/folders/productphoto.dart';

class paymentPage extends StatefulWidget {
  const paymentPage({Key? key}) : super(key: key);

  @override
  State<paymentPage> createState() => _paymentPageState();
}

class _paymentPageState extends State<paymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  title: const Text(
    "Payment",
    style: TextStyle(color: Colors.black),
  ),
  leading:  IconButton(
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
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: payList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20, left: 30),
                    width: 250,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(payList[index]),
                    ),
                  );
                }),
          ),
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
                      spreadRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Container(
                margin: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Name of Address",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 35,
                      //color: Colors.amber,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "National Bank of Ethiopia",
                              hintStyle: const TextStyle(fontSize: 15)),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Account Number",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 35,
                      //color: Colors.amber,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "xxxx-xxxx-xxxx-xxxx",
                              hintStyle: TextStyle(fontSize: 15)),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Expiration Date",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 5,
                        ),
                        const Text(
                          "Cvv",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        )
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: 170,
                            height: 35,
                            //color: Colors.amber,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "02/24",
                                    hintStyle: TextStyle(fontSize: 15)),
                                keyboardType: TextInputType.name,
                              ),
                            ),
                          )),
                          const SizedBox(width: 8),
                          Expanded(
                              child: Container(
                            margin: const EdgeInsets.only(left: 10, top: 10),
                            width: 180,
                            height: 35,
                            //color: Colors.amber,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "990",
                                    hintStyle: const TextStyle(fontSize: 15)),
                                keyboardType: TextInputType.name,
                              ),
                            ),
                          ))
                        ])
                  ],
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, bottom: 5, right: 10),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Order total",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                Text(
                  "\$ 450.00",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[200],
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, bottom: 5, right: 10),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Deliver Charge",
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily:
                          "assets/fonts/Montserrat-Italic-VariableFont_wght.ttf"),
                ),
                Text(
                  "Free",
                  style: TextStyle(fontSize: 12, color: Colors.green),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[200],
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, bottom: 5, right: 10),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Total Price",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$ 450.00",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
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
                Navigator.pushNamed(context, '/verify');
              }),
          SizedBox(
            height: 10,
          )
        ]));
  }
}
