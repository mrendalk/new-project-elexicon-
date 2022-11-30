import 'package:flutter/material.dart';
import 'package:projectapp/folders/productDetail.dart';
import 'package:projectapp/folders/productphoto.dart';
import 'package:projectapp/screens/products.dart';
import 'package:projectapp/widgets/circularavatar.dart';

class ListOfCard extends StatelessWidget {
  ListOfCard({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              //height: 200,
              //width: 180,
              margin: const EdgeInsets.only(
                  top: 8.0, left: 8.0, bottom: 10, right: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 232, 232, 232),
                      offset: Offset(
                        0,
                        2,
                      ),
                      spreadRadius: 1.0,
                      blurRadius: 4), //BoxShadow
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
                          products[index].photoUrl,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12),
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
                        Text("\$ ${products[index].price}",
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
                            height: 15,
                            width: 45,
                            child: const Center(
                                child: Text(
                              "ADD",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12),
                            )),
                          ),
                          onTap: () {
                            print("add button clicked");
                            
                            addProduct(products[index]);
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
            top: 5,
            child: Container(
              width: 60,
              height: 20,
              color: Colors.white,
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      offset: Offset(1, 1), color: Colors.green, blurRadius: 0),
                ]),
                child: const Center(
                  child: Text(
                    "BestSeller",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.pushNamed(context, '/detail',
            arguments: ProductDetail(
                fName: products[index].foodName,
                pName: products[index].photoUrl,
                price: products[index].price,
                detail: products[index].detail));
      },
    );
  }
}
