import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projectapp/folders/productDetail.dart';

class CheckoutPage extends StatefulWidget {

  var sum = sumValue();
  CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Checkout",
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
        actions: [
          GestureDetector(
            child: const Icon(
              Icons.filter_alt,
              color: Colors.black,
            ),
            onTap: () {
              print("filter buttom");
              Navigator.pushNamed(context, '/filter');
            },
          ),
        ],
      ),
      body: ListView(children: [
        for (int i = 0; i < productTo.length; i++)
          checkoutWidget(
            index: i,
          ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              width: 170,
              height: 35,
              //color: Colors.amber,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter voucher code",
                      hintStyle: const TextStyle(fontSize: 15)),
                  keyboardType: TextInputType.name,
                ),
              ),
            )),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 10, top: 10, right: 12),
                  width: 180,
                  height: 35,
                  //color: Colors.amber,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 198, 23, 10),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                      child: Text("Apply coupon",
                          style: TextStyle(color: Colors.white)))),
            )
          ],
        ),
        const SizedBox(
          height: 20,
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
                "\$ 455" ".00",
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
              print(sumValue());
            }),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}

class checkoutWidget extends StatelessWidget {
  int index;
  checkoutWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
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
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 12),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(products[index].foodName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(products[index].subName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.grey)),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(children: [
                      Text("\$ ${products[index].price}   ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      const Text(
                        "40% off",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ])),
                Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, bottom: 10),
                    child: Row(children: [
                      CircleAvatar(
                          radius: 11,
                          backgroundColor: Colors.grey,
                          child: Icon(
                            Icons.bookmark,
                            color: Colors.white,
                            size: 16,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                          radius: 11,
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.delete_rounded,
                              color: Colors.white, size: 16)),
                    ])),
              ],
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Image(
                  height: 90,
                  width: 90,
                  image: AssetImage(products[index].photoUrl)),
            ),
            Positioned(
              bottom: 3,
              right: 148,
              child: Container(
                  width: 70,
                  height: 21,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 255, 255, 255))),
                  child: Text("")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 120, right: 130),
              child: ExpansionTile(
                children: [
                  for (int i = 0; i < 5; i++) Text("$i"),
                ],
                title: Text("Qua:"),
                iconColor: Colors.black,
              ),
            ),
          ],
        ));
  }
}
