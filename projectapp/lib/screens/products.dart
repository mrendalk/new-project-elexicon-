import 'package:flutter/material.dart';
import 'package:projectapp/widgets/circularavatar.dart';

class ProductDetail extends StatelessWidget {
  static const routeName = '/detail';

  String fName;
  String pName;
  double price;
  String detail;

  ProductDetail(
      {Key? key,
      required this.fName,
      required this.pName,
      required this.price,
      required this.detail})
      : super(key: key);

  List<Icon> iconList = <Icon>[
    const Icon(
      Icons.star,
      size: 15,
      color: Colors.red,
    ),
    const Icon(
      Icons.star,
      size: 15,
      color: Colors.red,
    ),
    const Icon(
      Icons.star,
      size: 15,
      color: Colors.red,
    ),
    const Icon(
      Icons.star,
      size: 15,
      color: Colors.red,
    ),
    const Icon(
      Icons.star,
      size: 15,
      color: Colors.red,
    ),
  ];

  List<Icon> iconList2 = [
    const Icon(
      Icons.star_border_outlined,
      size: 15,
      color: Colors.red,
    ),
    const Icon(
      Icons.star_border_outlined,
      size: 15,
      color: Colors.red,
    ),
    const Icon(
      Icons.star_border_outlined,
      size: 15,
      color: Colors.red,
    ),
    const Icon(
      Icons.star_border_outlined,
      size: 15,
      color: Colors.red,
    ),
    const Icon(
      Icons.star_border_outlined,
      size: 15,
      color: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    String routName = '/detail';
    return Scaffold(
        body: ListView(//mainAxisAlignment: MainAxisAlignment.start,
         children: [
      Stack(
        children: [
          Container(
            height: 285,
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 265,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage(pName),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text("Product detail",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                    )),
              ),
              const Spacer(),
              Stack(children: [
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/checkout');
                  },
                ),
                Positioned(
                  right: 3,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.red,
                    child: Text("6",
                        style: TextStyle(color: Colors.white, fontSize: 8)),
                  ),
                )
              ]),
              const Icon(Icons.filter_alt, color: Colors.white),
            ],
          ),
          Positioned(
            right: 10,
            bottom: 0,
            child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 12,
                      offset: Offset(3, 1),
                      spreadRadius: 1,
                      color: Colors.grey)
                ]),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite_border_sharp,
                    color: Colors.red,
                  ),
                )),
          ),
        ],
      ),
      Container(
        margin: const EdgeInsets.all(8),
        alignment: Alignment.topLeft,
        child: Text(
          fName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.8),
            child: Icon(
              Icons.gps_fixed_rounded,
              size: 15,
              color: Colors.grey,
            ),
          ),
          const Text(
            "2.8 km away",
            style: TextStyle(fontSize: 15, color: Colors.black87),
          ),
          const Spacer(),
          Column(
            children: [
              Text("\$  $price" ".00",
                  style: TextStyle(color: Colors.red, fontSize: 16)),
              Padding(
                padding: EdgeInsets.only(top: 8.0, right: 10),
                child: Text(
                  "Free shipping",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12,
                  ),
                  textScaleFactor: 1.1,
                ),
              )
            ],
          )
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 5),
                child: Text("4.5 rating",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: iconList,
                ),
              )
            ],
          ),
          const Spacer(),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 5, right: 5),
                child: Text("Give your rating",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Row(
                  children: iconList2,
                ),
              )
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
          margin: const EdgeInsets.only(left: 10, bottom: 12, top: 18),
          alignment: Alignment.centerLeft,
          child: const Text("Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
      Container(
          margin: const EdgeInsets.only(
            left: 12,
          ),
          alignment: Alignment.centerLeft,
          child: Text(detail,
              textScaleFactor: 1.1,
              style: const TextStyle(color: Colors.black87))),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text("Quantity",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.remove_circle_rounded, color: Colors.green),
          SizedBox(
            width: 6,
          ),
          Text("1"),
          SizedBox(
            width: 6,
          ),
          Icon(
            Icons.add_circle_rounded,
            color: Colors.green,
          )
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text("Total Price",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            width: 10,
          ),
          Text("\$ $price" ".00",
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red))
        ],
      )
    ]));
  }
}
