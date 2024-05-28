import 'package:ecomerceapp/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shoetile extends StatelessWidget {
  shoe Shoe;
  void Function()? onTap;
  Shoetile({super.key, required this.Shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double ScreenWeidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: ScreenWeidth * 0.85,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          Expanded(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  Shoe.imagepath,
                  fit: BoxFit.fill,
                )),
          ),
          //discription
          Text(
            Shoe.dexcription,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          //details+price
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      Shoe.name,
                      style: GoogleFonts.roboto(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      Shoe.price,
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(10)),
                          color: Colors.black),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
