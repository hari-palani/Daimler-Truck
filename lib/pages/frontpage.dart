import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/scan/backgnd.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Text(
                  "DAIMLER TRUCK",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 34,
                      letterSpacing: 8,
                      wordSpacing: 5,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 150,
                height: 150,
                color: Colors.yellow[800],
                child: MaterialButton(
                  onPressed: () => Navigator.popAndPushNamed(context, "/scan"),
                  hoverElevation: 50,
                  highlightElevation: 100,
                  hoverColor: Colors.black,
                  splashColor: Colors.transparent,
                  child: Image.asset(
                    'assets/scan/qr-code.png',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "CLICK TO SCAN\n     QR CODE",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      letterSpacing: 4,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 200, 20, 0),
              child: Text(
                "Ordering\nMade\nSimple!",
                style: GoogleFonts.lemon(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    letterSpacing: 4,
                    fontWeight: FontWeight.w500,
                    shadows: [Shadow(color: Colors.black,blurRadius: 8,)]
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
