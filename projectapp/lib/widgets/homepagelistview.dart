
import 'package:flutter/material.dart';
import 'package:projectapp/folders/productphoto.dart';


class listveiw extends StatelessWidget {
  const listveiw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: photo.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Colors.amber,),
              child: Image(image: AssetImage(photo[index])),
            ),
          );
        });
  }
}
