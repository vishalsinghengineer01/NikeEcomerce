import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_Page.dart';

class Intropage extends StatefulWidget {
  const Intropage({super.key});

  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double ScreenWeidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'lib/assets/logo.png',
                    height: Screenheight * 0.20,
                    width: ScreenWeidth * 0.85,
                  ),
                ),
                SizedBox(
                  height: Screenheight*0.01,
                ),
                Text(
                  'Just Do It',
                  style: GoogleFonts.roboto(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height:Screenheight*0.05,
                ),
                Text(
                  'Brand New Snakers And Custom Kicks Are Made With Premium Qulaity Shoes',
                  style: GoogleFonts.cabin(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: Screenheight * 0.08,
                ),
                GestureDetector(
                  onTap: () {
                 Get.to(HomePage());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Center(
                        child: Text(
                          'Shop Now',
                          style: GoogleFonts.roboto(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
