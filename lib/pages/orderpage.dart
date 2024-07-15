import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:daimlertrucks/utils/categorycard.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  Color inactivecolor = Colors.black26;
  Color activecolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[800],
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          "DAIMLER TRUCK",
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              fontSize: 20,
              letterSpacing: 5,
              wordSpacing: 3,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.yellow[800],
            constraints: BoxConstraints.tight(const Size.fromHeight(170)),
            child: ListView(
              padding: const EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              children: const [
                CategoryCard(
                  index: 0,
                  //color: activecolor,
                  icon: Icons.coffee_sharp,
                  text: "Hot Drinks",
                  //textColor: Colors.black,
                ),
                CategoryCard(
                  index: 1,
                  //color: inactivecolor,
                  icon: Icons.local_drink_sharp,
                  text: "Cold Drinks",
                  //textColor: Colors.white,
                ),
                CategoryCard(
                  index: 2,
                  //color: inactivecolor,
                  icon: Icons.local_pizza_sharp,
                  text: "Snacks",
                  //textColor: Colors.white,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10.0,
                )
              ],
            ),
            margin: const EdgeInsets.fromLTRB(60, 10, 60, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.ac_unit_rounded,
                  color: Colors.yellow[800],
                  size: 50,
                ),
                const SizedBox(
                  height: 12,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Green Tea",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10.0,
                )
              ],
            ),
            margin: const EdgeInsets.fromLTRB(60, 10, 60, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.ac_unit_rounded,
                  color: Colors.yellow[800],
                  size: 50,
                ),
                const SizedBox(
                  height: 12,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Coffee",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10.0,
                )
              ],
            ),
            margin: const EdgeInsets.fromLTRB(60, 10, 60, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.ac_unit_rounded,
                  color: Colors.yellow[800],
                  size: 50,
                ),
                const SizedBox(
                  height: 12,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Tea",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10.0,
                )
              ],
            ),
            margin: const EdgeInsets.fromLTRB(60, 10, 60, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.ac_unit_rounded,
                  color: Colors.yellow[800],
                  size: 50,
                ),
                const SizedBox(
                  height: 12,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Sandwitch",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10.0,
                )
              ],
            ),
            margin: const EdgeInsets.fromLTRB(60, 10, 60, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.ac_unit_rounded,
                  color: Colors.yellow[800],
                  size: 50,
                ),
                const SizedBox(
                  height: 12,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Black Tea",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 400,
            margin: const EdgeInsets.fromLTRB(60, 30, 60, 0),
            color: Colors.yellow[800],
            child: MaterialButton(
              onPressed: () => Navigator.popAndPushNamed(context, "/accept"),
              hoverElevation: 50,
              highlightElevation: 100,
              hoverColor: Colors.yellow[600],
              splashColor: Colors.transparent,
              child: Text(
                "CONFIRM ORDER",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    letterSpacing: 5,
                    wordSpacing: 3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
