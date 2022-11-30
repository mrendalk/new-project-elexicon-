import 'package:flutter/material.dart';
import 'package:projectapp/folders/productDetail.dart';
import 'package:projectapp/folders/productphoto.dart';
import 'package:projectapp/widgets/card.dart';

class MenuItems extends StatefulWidget {
  const MenuItems({Key? key}) : super(key: key);

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Menu items",
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
            child: Container(
              margin: const EdgeInsets.only(top: 16),
              child: Stack(children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                  ),
                ),
                const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red),
                  ),
                ),
                Positioned(
                  right: 2,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.red,
                    child: Text("${productTo.length}",
                        style: TextStyle(color: Colors.white, fontSize: 8)),
                  ),
                )
              ]),
            ),
            onTap: () {
              print("cart button");
              Navigator.pushNamed(context, '/checkout');
            },
          ),
          GestureDetector(
            child: const Icon(
              Icons.filter_alt,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/filter');
            },
          ),
        ],
      ),

////////,
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 12, bottom: 30, left: 10, right: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "What are you looking for? ",
                  border: InputBorder.none,
                  fillColor: Colors.grey[300],
                  filled: true),
            ),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: photoavatar.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 3),
                itemBuilder: (context, index) {
                  return ListOfCard(
                    index: index,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
