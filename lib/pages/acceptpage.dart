import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Acceptpage extends StatelessWidget {
  const Acceptpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[800],
        leading: const Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.yellow[800],
      body: Column(
        children: [
          const Icon(
            Icons.restaurant_menu,
            color: Colors.white,
            size: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Dear User,\nYour order accepted,\nwill be delivered in 10 minutes.\nThankyou",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Container(
            height: 50,
            width: 400,
            margin: const EdgeInsets.fromLTRB(60, 30, 60, 0),
            color: Colors.white,
            child: MaterialButton(
              onPressed: () => Navigator.popAndPushNamed(context, "/details"),
              hoverElevation: 50,
              highlightElevation: 100,
              hoverColor: Colors.white30,
              splashColor: Colors.transparent,
              child: Text(
                "VIEW DETAILS",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    letterSpacing: 5,
                    wordSpacing: 3,
                    fontWeight: FontWeight.w700,
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
