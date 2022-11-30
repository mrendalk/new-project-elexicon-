import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class tabcard extends StatelessWidget {
  const tabcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: const [
      Image(
        image: AssetImage("assets/images/eating.png"),
      ),
      Center(
        child: Text(
          "Fresh Foods",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Center(
        child: Text(
          "In Particular, the garbeled words of",
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Center(
        child: Text(
          "bear an unremarkable",
          style: TextStyle(color: Colors.grey),
        ),
      ),
    ]));
  }
}
