import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/folders/productphoto.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int isActive = 0;

  @override
  Widget build(BuildContext context) {
    GotoNavigate(String route) {
      Navigator.pushNamed(context, '/$route');
    }

    int _currentIndex = 2;

    return Scaffold(
      ///Naviagtion Drawer
      drawer: NavigationDrawer,

      //body
      body: Column(

          //appBar
          children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 16,
                ),
                child: IconButton(
                  onPressed: () {
                    NavigationDrawer;
                  },
                  icon: Icon(Icons.menu_sharp),
                ),
              ),
              const Text("Home",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Spacer(),
              Badge(
                badgeContent: Text(
                  "6",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                position: BadgePosition.topEnd(end: 3, top: 3),
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/detail');
                    },
                    icon: Icon(Icons.favorite_outline_sharp)),
              ),
              Badge(
                badgeContent: Text(
                  "4",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                position: BadgePosition.topEnd(end: 3, top: 3),
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/checkout');
                    },
                    icon: Icon(Icons.shopping_cart_outlined)),
              ),
            ]),

            //appBar end
            SizedBox(height: 15),

            //scrollable widget
            Expanded(
              flex: 6,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: homeList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(homeList[index]),
                        ),
                      ),
                    );
                  }),
            ),

            //search Bar view
            Container(
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey[300]),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Icon(Icons.search, color: Colors.grey),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search Product....",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                        fillColor: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 10, left: 30, bottom: 30),
              child: Text(
                "All Products",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),

            //All products scroll in horizontall
            Expanded(
              flex: 4,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: photoavatar.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                      child: Stack(children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(photoavatar[index]),
                          radius: 35,
                        ),
                      ]),
                    );
                  })

                  //Expanded(flex: 7, child: Container()),

                  ),
            ),

            //animated scrollable slide

            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider.builder(
                  itemCount: photolist.length,
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 10 / 3,
                    enlargeCenterPage: true,
                    reverse: false,
                    clipBehavior: Clip.hardEdge,
                    onPageChanged: (index, reason) {
                      setState(() {
                        isActive = index;
                      });
                    },

                    viewportFraction: 0.9,
                    //pageSnapping: false
                  ),
                  itemBuilder: (context, index, realIndex) {
                    isActive = index;
                    return Container(
                      height: 100,
                      width: 250,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            //height: 100,
                            fit: BoxFit.fill,
                            image: AssetImage(photolist[index]),
                          )),
                    );
                  }),
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 8),
                  child: AnimatedSmoothIndicator(
                    activeIndex: isActive,

                    //offset: 1,
                    effect: WormEffect(
                        dotHeight: 8, dotWidth: 8, activeDotColor: Colors.red),
                    count: photolist.length,
                    onDotClicked: (index) {
                      setState(() {
                        isActive = index;
                      });
                    },
                  ),
                ))
          ]),

      ///Button Navigation bar

      bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          index: _currentIndex,
          backgroundColor: Colors.white,
          buttonBackgroundColor: Colors.red,
          letIndexChange: (value) {
            setState(() {
              _currentIndex = value;
            });
            return true;
          },
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: [
            IconNavigation(iconData: Icons.home, route: 'home'),
            IconNavigation(iconData: Icons.search, route: 'checkout'),
            IconNavigation(iconData: Icons.rocket, route: 'home'),
            IconNavigation(
                iconData: Icons.edit_calendar_rounded, route: 'home'),
            IconNavigation(iconData: Icons.category_rounded, route: 'home'),
          ]),
    );
  }
}

///Drawer
Drawer NavigationDrawer = Drawer(
    child: Container(
        width: 200,
        color: Color.fromARGB(255, 94, 10, 4),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            _widgetProfile(),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Divider(
                thickness: 2,
                color: Colors.white,
              ),
            ),
            _widgetIcons(),
          ],
        )));

Widget _widgetProfile() {
  return Container(
    margin: const EdgeInsets.all(5),
    child: Row(children: const [
      InkWell(
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/profile1.jpg"),
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        "Xiang Hou",
        style: TextStyle(color: Colors.white),
      )
    ]),
  );
}

Widget _widgetIcons() {
  return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          NavigationIcons(
            iconData: Icons.home,
            title: 'Home',
            color: Colors.white,
            route: 'home',
          ),
          NavigationIcons(
            iconData: Icons.favorite,
            title: 'Search',
            color: Colors.white,
            route: 'filter',
          ),
          NavigationIcons(
            iconData: Icons.rocket,
            title: 'Menu Items',
            color: Colors.white,
            route: 'menuitem',
          ),
          NavigationIcons(
            iconData: Icons.note_alt,
            title: 'Address',
            color: Colors.white,
            route: 'address',
          ),
          NavigationIcons(
            iconData: Icons.category_rounded,
            title: 'cart',
            color: Colors.white,
            route: 'payment',
          ),
        ],
      ));
}

class NavigationIcons extends StatelessWidget {
  NavigationIcons(
      {Key? key,
      required this.iconData,
      required this.title,
      required this.color,
      required this.route})
      : super(key: key);
  final IconData iconData;
  final Color color;
  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/$route');
            },
            icon: Icon(
              iconData,
              color: color,
              size: 28,
            )),
        Text(
          title,
          style: TextStyle(color: color, fontSize: 16),
        ),
      ],
    );
  }
}

class IconNavigation extends StatelessWidget {
  const IconNavigation({Key? key, required this.iconData, required this.route})
      : super(key: key);

  final IconData iconData;
  final String route;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamed(context, '/$route');
      },
      icon: Icon(
        iconData,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}
