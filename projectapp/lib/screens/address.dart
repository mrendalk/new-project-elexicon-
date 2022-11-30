import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Address",
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
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 20,
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
              child: Column(children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Text(
                      "First name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                    const Text(
                      "Last name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
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
                              hintText: "Endalkachew",
                              hintStyle: const TextStyle(fontSize: 15)),
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
                              hintText: "Damte",
                              hintStyle: const TextStyle(fontSize: 15)),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    )),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Address",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
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
                          hintText: "810, Ethiopia, Addis Ababa",
                          hintStyle: const TextStyle(fontSize: 15)),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Phone Number",
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
                          hintText: "+251 947722518",
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
                      "City",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      width: 55,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                    const Text(
                      "State",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
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
                              hintText: "Addis Ababa",
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
                              hintText: "Kolfe Keranio",
                              hintStyle: const TextStyle(fontSize: 15)),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 35,
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
                  ),
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
                    "Continue",
                    style: TextStyle(color: Colors.white),
                  ))),
              onTap: () {
                Navigator.pushNamed(context, '/payment');
              }),
        ],
      ),
    );
  }
}
