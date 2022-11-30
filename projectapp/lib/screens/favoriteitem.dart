import 'package:flutter/material.dart';
import 'package:projectapp/folders/productphoto.dart';
import 'package:projectapp/widgets/card.dart';
import 'package:projectapp/widgets/cardforfavorite.dart';

class FavoriteItem extends StatefulWidget {
  const FavoriteItem({Key? key}) : super(key: key);

  @override
  State<FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Favorite items",
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
              Navigator.pushNamed(context, '/checkout');
            },
          ),
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
      body: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(top: 15, bottom: 20, left: 15, right: 15),
            height: 35,
            //color: Colors.amber,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(3),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "what are you looking for?",
                    hintStyle: const TextStyle(fontSize: 15)),
                keyboardType: TextInputType.name,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: photolist.length - 1,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 30, left: 30),
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                      //color: Colors.amber,
                      borderRadius: BorderRadius.circular(8),
                    ),

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(photolist[index]),
                      ),
                    ),
                    // child: Image(
                    //   fit: BoxFit.fill,
                    //   image: AssetImage(photolist[index]),
                  );
                }),
          ),
          Expanded(
            flex: 3,
            child: GridView.builder(
                itemCount: photoavatar.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 3),
                itemBuilder: (context, index) {
                  return CardForFavorite(
                    index: index,
                  );
                }),
          ),
        ],
      ),
    );
  }
}
