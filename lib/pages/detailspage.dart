import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailspage extends StatelessWidget {
  const Detailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[800],
        leading: const Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
          child: Text(
            "View Details",
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Text(
                "Hall A Table 4",
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
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
                  const Text(
                    "Green Tea",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: Colors.grey,
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
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
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
                  const Text(
                    "Coffee",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      "2",
                      style: TextStyle(
                        color: Colors.grey,
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
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
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
                  const Text(
                    "Tea",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.grey,
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
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
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
                  const Text(
                    "Sandwitch",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      "4",
                      style: TextStyle(
                        color: Colors.grey,
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
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
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
                  const Text(
                    "Black Tea",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      "5",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
