import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../comments/shoetile.dart';
import '../models/cartshoes.dart';
import '../models/shoe.dart';
import '../models/shoe.dart';



class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final CartController cartController = Get.put(CartController());



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: GoogleFonts.cabin(
                    fontSize: 15, fontWeight: FontWeight.w400),
              ),
              const Icon(Icons.search),
            ],
          ),
        ),
        // Message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text('Best Sellers Of Sneakers'),
        ),
        // Hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Hot Picks 🔥',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                'See All',
                style: GoogleFonts.roboto(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: Obx(() {
            return ListView.builder(
              itemCount: cartController.getShoeList().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                shoe   Shoe = cartController.getShoeList()[index];
                return GestureDetector(
                  onTap: () => cartController.addItemToCart(Shoe),
                  child: Shoetile(Shoe: Shoe, onTap: () {}),
                );
              },
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Divider(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
