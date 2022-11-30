import 'package:flutter/material.dart';
import 'package:projectapp/folders/productDetail.dart';
import 'package:projectapp/practice/animatedContainer.dart';
import 'package:projectapp/practice/animationfirst.dart';
import 'package:projectapp/screens/address.dart';
import 'package:projectapp/screens/checkout.dart';
import 'package:projectapp/screens/favoriteitem.dart';
import 'package:projectapp/screens/filterpage.dart';
import 'package:projectapp/screens/home.dart';
import 'package:projectapp/screens/login.dart';
import 'package:projectapp/screens/menuitems.dart';
import 'package:projectapp/screens/payment.dart';
import 'package:projectapp/screens/products.dart';
import 'package:projectapp/screens/tabviewselector.dart';
import 'package:projectapp/screens/verifypage.dart';
import 'package:projectapp/widgets/animatedcontainerwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //var routeName;
    //int index = 2;
    return MaterialApp(
      //initialRoute: "/home",

      routes: {
        '/home': (context) => const HomePage(),
        '/address': (context) => const AddressPage(),
        '/checkout': (context) => CheckoutPage(),
        '/favorite': (context) => const FavoriteItem(),
        '/filter': (context) => const FilterPage(),
        '/login': (context) => const loginpage(),
        '/menuitem': (context) => const MenuItems(),
        '/payment': (context) => const paymentPage(),
        'tabview': (context) => tabview(),
        '/verify': (context) => const VerifyPage(),
        //'/detail': (context) => ProductDetail()
            
      },

      debugShowCheckedModeBanner: false,

      home:  MyStatefulWidget(),
    );
  }
}
