import 'package:flutter/material.dart';

//pages
import 'package:quickbite/src/pages/home_page.dart';
import 'package:quickbite/src/pages/order_page.dart';
import 'package:quickbite/src/pages/profile_page.dart';
import 'package:quickbite/src/pages/signin_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;

  List<Widget> pages = [];
  Widget currentPage = HomePage();

  void initState() {
    super.initState();
    HomePage homePage = HomePage();
    OrderPage orderPage = OrderPage();
    ProfilePage profilePage = ProfilePage();
    SigninPage signinPage = SigninPage();
    pages = [homePage, orderPage, signinPage];

    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
              currentPage = pages[index];
            });
          },
          currentIndex: currentTabIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ]),
      body: currentPage,
    );
  }
}
