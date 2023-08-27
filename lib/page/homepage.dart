import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/page/shoppage.dart';
import 'package:provider/provider.dart';
import 'cartpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;
  List<Widget> widgetpages = [
    const ShopPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => cart(),
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
            )),
        drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                      child: Image.asset(
                    "image/nike-logo.png",
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.grey[900],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text(
                        "About",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, bottom: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.grey[900],
            unselectedItemColor: Colors.grey,
            currentIndex: selectedindex,
            onTap: (index) {
              setState(() {
                selectedindex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled), label: "Shop"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_rounded), label: "cart"),
            ]),
        body: widgetpages.elementAt(selectedindex),
      ),
    );
  }
}
