import 'package:flutter/material.dart';
import 'package:projectapp/folders/productphoto.dart';

class circularavatar extends StatelessWidget {
  const circularavatar({Key? key, required Icon child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          
          ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: photoavatar.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(photoavatar[index]),
                  ),
                );
              }))
        ]);
  }
}
