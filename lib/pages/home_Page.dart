import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../comments/bottomnavbar.dart';
import 'cartPAge.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const Cartpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
              color: Colors.black,
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            DrawerHeader(
                child: Image.asset(
              'lib/assets/logo.png',color: Colors.white,

            )),
           const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  'Home',
                  style: GoogleFonts.cabin(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  'Cart',
                  style: GoogleFonts.cabin(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text(
                  'About',
                  style: GoogleFonts.cabin(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),

            ), Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Logout',
                  style: GoogleFonts.cabin(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),

            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
