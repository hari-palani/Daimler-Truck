import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  Barcode? _barcode;

  Widget _buildBarcode(Barcode? value) {
    if (value == null) {
      return const Text(
        'Scan something!',
        overflow: TextOverflow.fade,
        style: TextStyle(color: Colors.white),
      );
    }

    return Column(
      children: [
        Text(
          value.displayValue ?? 'No display value.',
          overflow: TextOverflow.fade,
          style: const TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        MaterialButton(
          hoverElevation: 50,
          highlightElevation: 100,
          color: Colors.yellow[800],
          hoverColor: Colors.yellow[600],
          splashColor: Colors.transparent,
          onPressed: () => Navigator.popAndPushNamed(context, "/order"),
          child: const Text(
            "Continue",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }

  void _handleBarcode(BarcodeCapture barcodes) {
    if (mounted) {
      setState(() {
        _barcode = barcodes.barcodes.firstOrNull;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: MaterialButton(
          onPressed: () => Navigator.popAndPushNamed(context, "/front"),
          splashColor: Colors.transparent,
          //hoverColor: Colors.yellowAccent,
          child: const Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Scan QR Code',
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/scan/backgnd.png"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(210, 0, 0, 0), BlendMode.darken),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints.tight(const Size.fromRadius(100)),
              child: MobileScanner(
                onDetect: _handleBarcode,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 100,
              color: Colors.black.withOpacity(0.4),
              child: Row(
                children: [
                  Expanded(child: Center(child: _buildBarcode(_barcode))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
